class AddClientIdAndVendorIdToBookingItem < ActiveRecord::Migration[5.0]
  def change
    add_column :booking_items, :client_id, :integer
    add_column :booking_items, :vendor_id, :integer
  end
end
