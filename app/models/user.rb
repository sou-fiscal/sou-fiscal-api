class User < ApplicationRecord
  has_one :address
  has_many :complaints
  has_many :messages
end
