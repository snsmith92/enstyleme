class CreateVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :vacations do |t|
      t.datetime :vacation_start
      t.datetime :vacation_end
      t.integer :user_id
      t.integer :vendor_id
      t.timestamps
    end
    add_index :vacations, :vendor_id
    add_index :vacations, [:user_id, :vendor_id]
  end
end
