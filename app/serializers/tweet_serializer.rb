class TweetSerializer < ActiveModel::Serializer
  attributes :hashtag, :user_display, :user_handle, :feedback, :timestamp
end
