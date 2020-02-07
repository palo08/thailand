class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time
      t.references :user, foreign_key: true
      t.references :shop, foreign_key: true
      t.timestamps
    end
  end
end
