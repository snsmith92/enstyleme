class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :client_name
      t.string :phone
      t.text :notes
      t.integer :total_duration
      t.decimal :total_price, precision: 6, scale: 2
      t.integer :vendor_id
      t.integer :client_id
      t.timestamps
    end
    add_index :bookings, :vendor_id
    add_index :bookings, :client_id
    add_index :bookings, [:client_id, :vendor_id]
  end
end
