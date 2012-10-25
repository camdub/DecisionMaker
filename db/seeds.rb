# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Event.delete_all
Participant.delete_all
Rating.delete_all
Tweet.delete_all

# EPIC TWEET GEN
# takes a user hashtag and how many tweets to gen
# returns the total rating
def generate_tweets(hashtag, how_many)
  total_stars = 0
  how_many.times do
    stars = rand(5)+1
    total_stars += stars
    Tweet.create(
      user_handle: Faker::Lorem.words(2).join('_'),
      user_display:  Faker::Name.name,
      feedback: Faker::Lorem.sentences(2).join << " #{stars}star #doha ##{hashtag} #dmkr",
      rating: stars,
      event_hashtag: 'doha',
      participant_hashtag: "#{hashtag}",
      timestamp: rand(24.hours).ago
    )
  end
  total_stars
end

ev = Event.create!( 
  title: 'Climate Conference', 
  start_date: Date.new(2012, 11, 2), 
  end_date: Date.new(2012, 11, 3), 
  location: 'Doha, Qatar', 
  hashtag: 'doha'
)

p1 = Participant.create!( 
  name: 'Cameron Woodmansee', 
  position: 'Head of Awesome', 
  hashtag: 'cw', 
  twitter_handle: 'camwoodmansee'
)
p2 = Participant.create!( 
  name: 'Anthony Yu', 
  position: 'Has backetball shoes in his trunk', 
  hashtag: 'ay', 
  twitter_handle: ''
)
p3 = Participant.create!( 
  name: 'Michael Steinberg', 
  position: 'Writes bug free code', 
  hashtag: 'ms', 
  twitter_handle: ''
)
p4 = Participant.create!( 
  name: 'Jack Warner', 
  position: 'Tarrytown aficionado', 
  hashtag: 'jw', 
  twitter_handle: ''
)
p5 = Participant.create!( 
  name: 'Mina Mistry', 
  position: 'Mongo Master', 
  hashtag: 'mm', 
  twitter_handle: ''
)
p6 = Participant.create!( 
  name: 'Jon Landers', 
  position: 'Raver', 
  hashtag: 'jl', 
  twitter_handle: ''
)

r1 = Rating.create!(
  event_id: ev.id, 
  participant_id: p1.id, 
  rating_count: 17, 
  total_rating: generate_tweets(p1.hashtag, 17)
)
r2 = Rating.create!(
  event_id: ev.id, 
  participant_id: p2.id, 
  rating_count: 23, 
  total_rating: generate_tweets(p2.hashtag, 23)
)
r3 = Rating.create!(
  event_id: ev.id, 
  participant_id: p3.id, 
  rating_count: 30.0, 
  total_rating: generate_tweets(p3.hashtag, 30)
)
r4 = Rating.create!(
  event_id: ev.id, 
  participant_id: p4.id, 
  rating_count: 8, 
  total_rating: generate_tweets(p4.hashtag, 8)
)
r5 = Rating.create!(
  event_id: ev.id, 
  participant_id: p5.id, 
  rating_count: 10, 
  total_rating: generate_tweets(p5.hashtag, 10)
)
r6 = Rating.create!(
  event_id: ev.id, 
  participant_id: p6.id, 
  rating_count: 0, 
  total_rating: 0
)

