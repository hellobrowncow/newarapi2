class User < ActiveRecord::Base

  has_one :email
  has_many :items, dependent: :destroy

end
