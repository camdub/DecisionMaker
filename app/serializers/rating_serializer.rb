class RatingSerializer < ActiveModel::Serializer
  attributes :rating_count, :total_rating
end
