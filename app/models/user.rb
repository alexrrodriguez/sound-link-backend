class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :user_concerts
  has_many :concerts, through: :user_concerts
end
