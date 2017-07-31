class Complaint < ApplicationRecord
  belongs_to :user

  has_one :address
  has_many :messages
  has_many :pics
end
