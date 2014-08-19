class Item < ActiveRecord::Base
  belongs_to :collection

  has_many :tags, dependent: :destroy
  has_many :ratings, dependent: :destroy

  validates :color, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, presence: true
  validates :clothing_type, presence: true

  accepts_nested_attributes_for :tags, allow_destroy: true, reject_if: :all_blank

  mount_uploader :picture, PictureUploader
end
  