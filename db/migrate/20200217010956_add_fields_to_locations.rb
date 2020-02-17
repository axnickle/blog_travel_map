class AddFieldsToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :state, :string
    add_column :locations, :name, :string
    add_column :locations, :description, :string
    remove_column :locations, :filepath, :string
  end
end
