class ServicesController < ApplicationController
  before_action :authenticate_user!

  def new 
    @vendor = Vendor.find(params[:vendor_id])
    @service = Service.new
  end 
  
  def create 
    @vendor = Vendor.find_by_id(params[:vendor_id])
    if @vendor.user == current_user
      @service = @vendor.services.create(service_params.merge(user: current_user))
      redirect_to vendor_path(@vendor)
    else
      return render text: 'Not Allowed', status: :forbidden
    end 
  end 

  def edit 

  end 

  def update

  end 

  def destroy

  end 

  private

  def service_params
    params.require(:service).permit(:name, :description, :hours, :minutes, :cost_absolute, :cost_range)
  end 

end

