class VacationsController < ApplicationController
  before_action :authenticate_user!

  def index

  end 

  def new
    @vendor = Vendor.friendly.find(params[:vendor_id])
    @vacation = Vacation.new 
  end 

  def create
    @vendor = Vendor.friendly.find(params[:vendor_id])
    if @vendor.user == current_user
      @vacation = @vendor.vacations.create(vacation_params)
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

  end 

  private 

  def vacation_params
    params.require(:vacation).permit(:vacation_start, :vacation_end)
  end 
end
