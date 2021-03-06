class User < ApplicationRecord
  has_many :posts, dependent: :destroy


  has_secure_password
  validates :password, presence: true, :on => :create
  # attr_accessor :email, :password, :password_confirmation
  validates_uniqueness_of :email

end
