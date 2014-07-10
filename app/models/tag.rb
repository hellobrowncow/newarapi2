class Tag < ActiveRecord::Base

  has_and_belongs_to_many :items
  #attributes :color, :type, :event, :favorite, :function, :weather, :rating

end
