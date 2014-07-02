class ItemSerializer < ActiveModel::Serializer
  attributes :id, :color
  has_one :user
end
