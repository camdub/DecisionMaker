class ParticipantSerializer < ActiveModel::Serializer
  attributes :name, :position, :hashtag, :rating_perc, :rating_num
end
