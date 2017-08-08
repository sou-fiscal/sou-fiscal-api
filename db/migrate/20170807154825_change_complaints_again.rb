class ChangeComplaintsAgain < ActiveRecord::Migration[5.1]
  def change
    change_column :complaints, :initial_date, :date
    change_column :complaints, :delivery_forecast, :date
  end
end
