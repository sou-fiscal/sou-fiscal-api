class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birth_date
      t.string :gender
      t.string :email

      t.timestamps
    end
  end
end
