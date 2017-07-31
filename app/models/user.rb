class User < ApplicationRecord
  has_secure_password
  
  has_one :address
  has_many :complaints
  has_many :messages
end
