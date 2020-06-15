class AddPhotos < ActiveRecord::Migration[6.0]
  def change

    create_table  :photos do |t|
      t.integer   :location_id
      t.string    :name
      t.string    :caption
      t.string    :filepath
      t.datetime  :date
      # every time a changed is made; add columns created at, updated at
      t.timestamps default: -> {'current_timestamp'}
    end
      add_index :photos, :location_id
  end
end
