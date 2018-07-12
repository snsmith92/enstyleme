class AvailabilitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @vendor = Vendor.friendly.find(params[:vendor_id])
    render json: Availability.where(vendor_id: @vendor)
  end 

  def new
    @vendor = Vendor.friendly.find(params[:vendor_id])
    if @vendor.user != current_user 
      return render plain: 'Not Allowed', status: :forbidden
    end  
    @availability = Availability.new 
  end 

  def create
    @vendor = Vendor.friendly.find(params[:vendor_id])
    params[:availability].parse_time_select! :day_start
    params[:availability].parse_time_select! :day_end
    if @vendor.user == current_user
      @availability = @vendor.availabilities.create(availability_params)
    else 
      return render plain: 'Not Allowed', status: :forbidden
    end
  end 

  def show

  end 

  def edit 

  end 

  def update

  end 

  def destroy
    @vendor = Vendor.friendly.find(params[:vendor_id])
    @availability = Availability.find_by_id(params[:id])
    if @availability.user == current_user
      @availability.destroy
    else
      return render plain: 'Not Allowed', status: :forbidden
    end 
  end 

  private 

  def availability_params
    params.require(:availability).permit(:time_zone, :day, :day_start, :day_end)
  end 
end
