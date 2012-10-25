class MobileController < ApplicationController
  layout 'mobile'

  def events
    @events = Event.all
  end

  def leaderboard
    @event = Event.find(params[:id])
    @participants = Participant.includes(:ratings).where('ratings.event_id' => params[:id])
    @participants.each do |s|
      s.calculate_ratings(s.ratings.first)
    end
    @participants.sort! { |a, b| b.rating_perc <=> a.rating_perc }
  end

  def feedback
    @event = Event.find(params[:id])
    @participant = Participant.includes(:ratings).where('ratings.event_id' => params[:id]).find(params[:pid])
    @participant.calculate_ratings(@participant.ratings.first)
  end

  def detail
    @event = Event.find(params[:id])
    @participant = Participant.includes(:ratings).where('ratings.event_id' => params[:id]).find(params[:pid])
    @participant.calculate_ratings(@participant.ratings.first)
    @tweets = Tweet.find_all_by_participant_hashtag @participant.hashtag
  end

end
