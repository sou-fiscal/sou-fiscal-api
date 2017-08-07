class User < ApplicationRecord
  has_secure_password
  attr_accessible :password, :password_confirmation

  has_one :address
  has_many :complaints
  has_many :messages

  validates :password, presence: true, confirmation: true
end
