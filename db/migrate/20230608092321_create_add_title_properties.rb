class CreateAddTitleProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :property_title, :string
  end
end
