class User < ApplicationRecord
  has_one :address
  has_many :complaints
  has_many :messages

  scope :user_id, -> (user_id) { where user_id: user_id }
end
