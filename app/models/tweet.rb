class Tweet
  include MongoMapper::Document

  key :feedback, String
  key :rating, Integer
  key :hashtag, String
  key :user_handle, String
  key :user_display, String
  key :timestamp, Date
end
