object @participant
attributes :title, :hashtag

node :participants do
  @event.participants.map { |p| { id: p._id, name: p.name, hashtag: p.hashtag, rating: p.rating } }
end