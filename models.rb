class Event
  include MongoMapper::Document
  
  key :title, String
  key :hashtags, String
  key :city, String
  key :state, String
  key :country, String
  key :startdate, Date
  key :enddate, Date
  
  many :participants
end

class Participant
  include MongoMapper::EmbeddedDocument
  
  key :name, String
  key :hashtag, String
  key :rating, Integer
  key :ratingcount, Integer
end