class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string   :name
      t.integer  :postal_id
      t.string   :address
      t.float    :latitude
      t.float    :longitude

      t.timestamps null: false
    end
    add_index :hospitals, :postal_id
  end
end
