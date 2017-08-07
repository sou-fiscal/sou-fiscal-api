class ChangeComplaints < ActiveRecord::Migration[5.1]
  def change
    change_column :complaints, :initial_date, :string
    change_column :complaints, :delivery_forecast, :string
  end
end
