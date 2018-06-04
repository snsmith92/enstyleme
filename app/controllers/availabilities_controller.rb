class AvailabilitiesController < ApplicationController
  before_action :authenticate_user!

  def index

  end 

  def new
    @vendor = Vendor.find(params[:vendor_id])
    @availability = Availability.new 
  end 

  def create
    @vendor = Vendor.find(params[:vendor_id])
    params[:availability].parse_time_select! :day_start
    params[:availability].parse_time_select! :day_end
    @availability = @vendor.availabilities.create(availability_params)
  end 

  def show

  end 

  def edit 

  end 

  def update

  end 

  def destroy

  end 

  private 

  def availability_params
    params.require(:availability).permit(:time_zone, :day, :day_start, :day_end, :break_start, :break_end, :available)
  end 
end
