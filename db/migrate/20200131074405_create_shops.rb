class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :genre
      t.string :address, null: false, unique: true
      t.string :holiday
      t.string :japanese_staff
      t.string :map_code, unique: true
      t.integer :open_hours
      t.integer :close_hours
      t.references :area, foreign_key: true
      t.string :url
     

      t.timestamps
    end
  end
end
