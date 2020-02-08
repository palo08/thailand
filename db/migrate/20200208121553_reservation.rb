class Reservation < ActiveRecord::Migration[5.0]
  def up
    create_table :reservations do |t|
      t.string   :name, limit: 50

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end

  def down
  end
end
