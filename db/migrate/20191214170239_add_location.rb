class AddLocation < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :country
      t.datetime :visit_date
      t.string   :filepath
      t.timestamps default: -> {'current_timestamp'}
    end
  end
end
