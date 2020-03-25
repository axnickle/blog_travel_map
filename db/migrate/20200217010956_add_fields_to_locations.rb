class AddFieldsToLocations < ActiveRecord::Migration[6.0]
  def change
    # changes made to locations table- state, name and description columns
    add_column :locations, :state, :string
    add_column :locations, :name, :string
    add_column :locations, :description, :string
    #remove a column
    remove_column :locations, :filepath, :string
  end
end
