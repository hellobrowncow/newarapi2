class Tag < ActiveRecord::Base

  attributes :color, :type, :event, :favorite, :function, :weather, :rating
  has_and_belong_to_many :items, dependent: :destroy

end
