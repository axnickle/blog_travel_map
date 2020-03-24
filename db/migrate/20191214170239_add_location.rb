class AddLocation < ActiveRecord::Migration[6.0]
  def change
    #table created called locations table
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :country
      t.datetime :visit_date
      t.string   :filepath
      # every time a changed is made; add columns created at, updated at
      t.timestamps default: -> {'current_timestamp'}
    end
  end
end
