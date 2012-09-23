collection @event_participants, object_root: false
attributes :_id, :name, :hashtag, :image, :ratingcount, :newratingnumber, :newratingperc

attribute :newratingnumber => :rating
attribute :newratingperc => :percent
attribute :_id => :id