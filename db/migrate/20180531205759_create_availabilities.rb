class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.string :time_zone
      t.string :day
      t.time :day_start
      t.time :day_end
      t.time :break_start
      t.time :break_end
      t.integer :user_id
      t.integer :vendor_id
      t.timestamps
    end
    add_index :availabilities, :vendor_id
    add_index :availabilities, [:user_id, :vendor_id]
  end
end
