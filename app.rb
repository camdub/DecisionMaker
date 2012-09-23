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
  
  get '/events/:id' do |id|
    @event_participants = Event.find(id).participants
    @event_participants.each do |p|
      p.calculateratings
    end
    render :rabl, :event
  end

  get '/participants/:searchhashtag' do |searchhashtag|
    @event = Event.where("participants.hashtag" => "#{searchhashtag}").first
    
    #@participant = []
    
    @event.participants.each do |x|
      if x.hashtag == searchhashtag
        @participant = x
      end
    end
    
    @participant.calculateratings
    render :rabl, :participant

    #if @participant != nil
     # @participant.calculateratings
    #  render :rabl, :participant
    #else
    #  "Not found"
    #end
  end
  
end

#TweetStream.configure do |config|
#  config.consumer_key       = 'sypjG2Y2TPAIEaZ8bLuHA'
#  config.consumer_secret    = '8sBtR3MhKkQDEqKAsSXvy5TK52PskXWFRIaHrEpB8'
#  config.oauth_token        = '840210782-RsklYqhN1sc8DMK5Bdo7axvCI0mrAXe1iV6mHJg'
#  config.oauth_token_secret = 'D4kduSGzfCxHlQ1ePceBq59hV4d515Si4U96PzQe08'
#  config.auth_method        = :oauth
#end

