class User < ApplicationRecord
  has_secure_password

  has_one :address
  has_many :complaints
  has_many :messages

  :password_digest allow_nil: true
end
