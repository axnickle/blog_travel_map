class AddImageFileToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :image_file, :string
  end
end
