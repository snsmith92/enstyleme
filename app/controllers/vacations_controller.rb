class VacationsController < ApplicationController
  before_action :authenticate_user!

  def index

  end 

  def new
    @vendor = Vendor.friendly.find(params[:vendor_id])
    @vacation = Vacation.new 
  end 

  def create
    @vendor = Vendor.find(params[:vendor_id])
    # params[:vacation].parse_time_select! :vacation_start
    # params[:vacation].parse_time_select! :vacation_end
    @vacation = @vendor.vacations.create(vacation_params)
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

  def vacation_params
    params.require(:vacation).permit(:vacation_start, :vacation_end)
  end 
end
