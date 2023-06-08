class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_email
      t.string :user_name
      t.string :password
      t.integer :property_id
    end
  end
end
