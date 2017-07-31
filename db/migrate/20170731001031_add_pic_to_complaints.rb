class AddPicToComplaints < ActiveRecord::Migration[5.1]
  def change
    add_reference :pics, :complaint, index: true 
  end
end
