class AddBookingStatusToBooking < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :booking_status
  end
end
