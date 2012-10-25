class TweetsController < ApplicationController

  def user_tweets
    @tweets = Tweet.find_all_by_hashtag params[:hashtag]
    render json: @tweets
  end

  def send_tweet
    puts params
    current_user.twitter.update(params['tweet'])
    Tweet.create(
      feedback: params['feedback'],
      rating: params['rating'],
      event_hashtag: params['event_hashtag'],
      participant_hashtag: params['participant'],
      user_handle: current_user.name,
      user_display: current_user.name,
      timestamp: Time.now
    )
    TweetProcessor.update_rating(
      params['rating'].to_i,
      [params['event_hashtag'], params['participant']])
    redirect_to leaderboard_path(params['event']), notice: "Tweeted: #{params['tweet']}!"
  end

end
