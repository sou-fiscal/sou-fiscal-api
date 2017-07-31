class Complaint < ApplicationRecord
  belongs_to :user

  has_one :address
  has_many :messages
  has_many :pics

  scope :user_id, -> (user_id) { where user_id: user_id }
end
