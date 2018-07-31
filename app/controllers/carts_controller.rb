class CartsController < ApplicationController
  before_action :authenticate_client!
  
  def show
    @booking_items = current_booking.booking_items
  end
end
