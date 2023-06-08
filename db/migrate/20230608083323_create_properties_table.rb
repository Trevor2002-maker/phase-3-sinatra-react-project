class CreatePropertiesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :location
      t.integer :bedroom_number
      t.string :house_type
      t.string :image
      t.integer :price
    end
  end
end
