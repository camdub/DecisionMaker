
class TweetProcessor

  def self.parse_rating(text)
    body = text.gsub /\s+/, ""
    position = body.index(/[0-5]star/i)

    rating = body[position] if position != nil
    rating.to_i if rating
  end

  def self.add_tweet(tweet, hashes)
    Tweet.create(
      feedback: tweet.text, 
      user_display: tweet.user.name, 
      user_handle: tweet.user.screen_name,
      event_hashtag: hashes[:event],
      participant_hashtag: hashes[:participant],
      timestamp: tweet.created_at
    ) 
  end

  def self.update_rating(new_rating, hashes)
    results = {}
    participant = Participant.where(hashtag: hashes).first
    event = Event.where(hashtag: hashes).first

    if event && participant
      rating = Rating.where(event_id: event.id, participant_id: participant.id).first

      if new_rating && rating
        rating.rating_count += 1
        rating.total_rating += new_rating
        rating.save
      end

      results[:event] = event.hashtag
      results[:participant] = participant.hashtag
    end
    results
  end

end
