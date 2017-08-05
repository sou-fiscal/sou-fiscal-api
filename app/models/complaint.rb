class Complaint < ApplicationRecord
  belongs_to :user

  has_one :address
  has_many :messages
  has_many :pics

  def self.search_by_user(search_by_user)
    where(user_id: search_by_user)
  end
end
