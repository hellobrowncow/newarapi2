class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :collection
  has_and_belongs_to_many :tags

  mount_uploader :picture, PictureUploader
end
  