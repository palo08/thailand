class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name, null: false
      t.string :fee, null: false
      t.integer :treatment_time, null: false
      t.references :shop, foreign_key: true
      t.timestamps
    end
  end
end
