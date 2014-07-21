class Item < ActiveRecord::Base
  belongs_to :collection
  has_many :tags, dependent: :destroy
  has_many :ratings, dependent: :destroy

  accepts_nested_attributes_for :tags, allow_destroy: true, reject_if: :all_blank

  mount_uploader :picture, PictureUploader
end
  