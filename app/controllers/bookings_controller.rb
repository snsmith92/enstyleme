class BookingsController < ApplicationController
  before_action :authenticate_client!, only: [:new, :create, :edit, :update]
  before_action :authenticate_user!, only: [:destroy]

  def new
    @vendor = Vendor.friendly.find(params[:vendor_id])
    @booking = Booking.new
  end 
  
  def create

  end 

  def edit

  end 

  def update

  end 

  def destroy

  end 

  private

  def booking_params 
    params.require(:booking).permit(:client_name, :phone, :notes)
  end 
end
