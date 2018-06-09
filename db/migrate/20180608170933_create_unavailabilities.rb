class CreateUnavailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :unavailabilities do |t|
      t.integer :day
      t.time :break_start
      t.time :break_end
      t.integer :user_id
      t.integer :vendor_id
      t.timestamps
    end
    add_index :unavailabilities, :vendor_id
    add_index :unavailabilities, [:user_id, :vendor_id]
  end
end
