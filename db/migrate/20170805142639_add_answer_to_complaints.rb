class AddAnswerToComplaints < ActiveRecord::Migration[5.1]
  def change
    add_column :complaints, :answer, :text
  end
end
