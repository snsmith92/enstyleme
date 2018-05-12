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
    @vendor = Vendor.find_by_id(params[:vendor_id])
    @service = Service.find_by_id(params[:id])
    if @service.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end 
  end 

  def update
    @vendor = Vendor.find_by_id(params[:vendor_id])
    @service = Service.find_by_id(params[:id])
    if @service.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end 
    @service.update_attributes(service_params)
    redirect_to vendor_path(@vendor), notice: "The service has been updated."
  end 

  def destroy
    @vendor = Vendor.find_by_id(params[:vendor_id])
    @service = Service.find_by_id(params[:id])
    if @service.user == current_user
      @service.destroy
      redirect_to vendor_path(@vendor), notice: "The service has been deleted."
    else
      return render text: 'Not Allowed', status: :forbidden
    end 
  end 

  private

  def service_params
    params.require(:service).permit(:name, :description, :hours, :minutes, :cost_absolute, :cost_range)
  end 

end

