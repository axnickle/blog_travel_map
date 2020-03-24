class AddDescription < ActiveRecord::Migration[6.0]
  def change
    #added articles column, description is the name of the column,
      #text is the data type
      #articles = just name of table
    add_column(:articles, :description, :text)
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
