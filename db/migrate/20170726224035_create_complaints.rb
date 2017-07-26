class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.string :name
      t.float :initial_value
      t.date :initial_date
      t.date :delivery_forecast
      t.text :detail
      t.string :contract
      t.string :status
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
