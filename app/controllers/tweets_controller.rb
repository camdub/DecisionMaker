class TweetsController < ApplicationController

  def user_tweets
    @tweets = Tweet.find_all_by_hashtag params[:hashtag]
    render json: @tweets
  end

  def send_tweet

  end

end
