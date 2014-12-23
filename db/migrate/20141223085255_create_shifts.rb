class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer  :user_id
      t.integer  :hospital_id
      t.datetime :start
      t.datetime :end
      t.integer  :points

      t.timestamps null: false
    end
    add_index :shifts, :user_id
    add_index :shifts, :hospital_id
    add_index :shifts, :points
  end
end
