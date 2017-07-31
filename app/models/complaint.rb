class Complaint < ApplicationRecord
  belongs_to :user

  has_one :address
  has_many :messages
  has_many :pics

  def self.search(search)
    where(user_id: search)
  end
end
