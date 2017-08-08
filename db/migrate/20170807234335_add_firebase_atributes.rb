class AddFirebaseAtributes < ActiveRecord::Migration[5.1]
  def change
    add_column :complaints, :firebase_email, :string
    add_column :complaints, :firebase_id, :string
  end
end
