class CreateBlackouts < ActiveRecord::Migration
  def change
    create_table :blackouts do |t|
      t.integer  :user_id
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end
    add_index :blackouts, :user_id
  end
end
