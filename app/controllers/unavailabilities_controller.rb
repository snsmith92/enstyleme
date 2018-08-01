class UnavailabilitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @vendor = Vendor.friendly.find(params[:vendor_id])
    render json: Unavailability.where(vendor_id: @vendor)
  end 

  def new
    @vendor = Vendor.friendly.find(params[:vendor_id])
    if @vendor.user != current_user 
      return render plain: 'Not Allowed', status: :forbidden
    end  
    @unavailability = Unavailability.new 
  end 

  def create
    @vendor = Vendor.friendly.find(params[:vendor_id])
    params[:unavailability].parse_time_select! :break_start
    params[:unavailability].parse_time_select! :break_end
    if @vendor.user == current_user
      @unavailability = @vendor.unavailabilities.create(unavailability_params)
      @unavailability.check_duplicate_unavailability
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
    @unavailability = Unavailability.find_by_id(params[:id])
    if @unavailability.vendor.user == current_user
      @unavailability.destroy
    else
      return render plain: 'Not Allowed', status: :forbidden
    end 
  end 

  private 

  def unavailability_params
    params.require(:unavailability).permit(:day, :break_start, :break_end)
  end 
end
