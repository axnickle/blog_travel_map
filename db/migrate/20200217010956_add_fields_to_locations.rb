class AddFieldsToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :state, :string
    add_column :locations, :photo_name, :string
    add_column :locations, :photo_description, :string
  end
end
