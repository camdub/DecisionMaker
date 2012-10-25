class TweetsController < ApplicationController

  def user_tweets
    @tweets = Tweet.find_all_by_hashtag params[:hashtag]
    render json: @tweets
  end

  def send_tweet
    puts params
    current_user.twitter.update(params['tweet'])
    redirect_to leaderboard_path(1), notice: "Tweeted: #{params['tweet']}!"
  end

end
