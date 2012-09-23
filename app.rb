require './models'

class Main < Sinatra::Base
  
  configure do
    MongoMapper.connection = Mongo::Connection.from_uri('mongodb://test_read:testing@ds037907-a.mongolab.com:37907/decisionmaker')
    MongoMapper.database = 'decisionmaker'
    
    TweetStream.configure do |config|
      config.consumer_key       = 'cVcIw5zoLFE2a4BdDsmmA'
      config.consumer_secret    = 'yYgVgvTT9uCFAi2IuscbYTCqwJZ1sdQxzISvLhNWUA'
      config.oauth_token        = '4618-H3gU7mjDQ7MtFkAwHhCqD91Cp4RqDTp1AKwGzpHGL3I'
      config.oauth_token_secret = 'xmc9kFgOXpMdQ590Tho2gV7fE71v5OmBrX8qPGh7Y'
      config.auth_method        = :oauth
    end
  end
  
  before do
    content_type :json
  end
  
  get '/' do
    event = Event.first
    "event: #{event.hashtag}"
  end
  

  
end