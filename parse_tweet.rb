require 'mongo_mapper'
require './models'
require 'twitter-text'

include Twitter::Extractor

tweet = "5star speech by the former prez #doha_billc"

MONGO_URI = "mongodb://dm_user:dm_user@ds037907-a.mongolab.com:37907/decisionmaker"

MongoMapper.connection = Mongo::Connection.from_uri(MONGO_URI)
MongoMapper.database = 'decisionmaker'

@participant = Event.find('505f2b91e4b0fcc70059e3cc').participants.select {|b| b.hashtag == "undoha-daewoonghong"}.first

@rating = Tweet.parse_rating(tweet).to_i
#p @rating

@participant.rating += @rating
@participant.ratingcount += 1

@participant.save

#Tweet.create(rating: @rating, feedback: tweet, participanthashtag: @participant.hashtag)