class User < ActiveRecord::Base
  has_many :collections, dependent: :destroy
  has_many :items, through: :collections

  before_save :encrypt_password
  before_save :downcase_email

  attr_accessor :password, :password_confirmation

  validates :name, :email, :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, presence: true, on: :create
  validates :password, confirmation: true, if: :password


  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user.authenticate(password) if user
  end

  def authenticate(password)
    return self if self.fish == BCrypt::Engine.hash_secret(password, self.salt)
  end

  protected

  def encrypt_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.fish = BCrypt::Engine.hash_secret(password, self.salt)
    end
  end

  def downcase_email
    self.email.downcase!
  end

end
