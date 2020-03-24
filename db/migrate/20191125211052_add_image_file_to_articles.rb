class AddImageFileToArticles < ActiveRecord::Migration[6.0]
  def change
    #added to articles' table (migration file), image_file is just the column name
      #string datatype
    add_column :articles, :image_file, :string
  end
end
