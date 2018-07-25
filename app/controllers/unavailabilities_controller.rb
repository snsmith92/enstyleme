class UnavailabilitiesController < ApplicationController
  before_action :authenticate_user!

  def index

  end 

  def new
    @vendor = Vendor.friendly.find(params[:vendor_id])
    @unavailability = Unavailability.new 
  end 

  def create
    @vendor = Vendor.find(params[:vendor_id])
    params[:unavailability].parse_time_select! :break_start
    params[:unavailability].parse_time_select! :break_end
    @unavailability = @vendor.unavailabilities.create(unavailability_params)
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

  def unavailability_params
    params.require(:unavailability).permit(:day, :break_start, :break_end)
  end 
end
