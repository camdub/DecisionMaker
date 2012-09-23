require './models'

class Main < Sinatra::Base
  
  configure do
    MongoMapper.connection = Mongo::Connection.from_uri(ENV['MONGO_URI'])
    MongoMapper.database = 'decisionmaker'
  end
  
  Rabl.register!
  
  before do
    content_type :json
  end
  
  get '/events' do
    @events = Event.all
    render :rabl, :events
  end
  
  get '/event/:id' do |id|
    @event = Event.find(id)
    render :rabl, :event
  end
  
end

#TweetStream.configure do |config|
#  config.consumer_key       = 'sypjG2Y2TPAIEaZ8bLuHA'
#  config.consumer_secret    = '8sBtR3MhKkQDEqKAsSXvy5TK52PskXWFRIaHrEpB8'
#  config.oauth_token        = '840210782-RsklYqhN1sc8DMK5Bdo7axvCI0mrAXe1iV6mHJg'
#  config.oauth_token_secret = 'D4kduSGzfCxHlQ1ePceBq59hV4d515Si4U96PzQe08'
#  config.auth_method        = :oauth
#end

