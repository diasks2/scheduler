class CreatePostals < ActiveRecord::Migration
  def change
    create_table :postals do |t|
      t.string :postal_code
      t.string :prefecture
      t.string :prefecture_kana
      t.string :city
      t.string :city_kana
      t.string :town
      t.string :town_kana
      t.string :block
      t.string :block_kana

      t.timestamps null: false
    end
    add_index :postals, :prefecture
  end
end
