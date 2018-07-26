class AddIndexToBookingItems < ActiveRecord::Migration[5.0]
  def change
    add_index :booking_items, :vendor_id
    add_index :booking_items, :client_id
    add_index :booking_items, [:client_id, :vendor_id]
  end
end
