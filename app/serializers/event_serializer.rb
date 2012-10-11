class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :start_date, :end_date
end
