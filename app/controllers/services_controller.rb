class ServicesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @services = if params[:tag]
      Service.tagged_with(params[:tag])
    else
      Service.all
    end
  end

  def new 
    @vendor = Vendor.friendly.find(params[:vendor_id])
    @service = Service.new
  end 
  
  def create 
    @vendor = Vendor.friendly.find(params[:vendor_id])
    if @vendor.user == current_user
      @service = @vendor.services.create(service_params.merge(user: current_user))
      if @service.valid?
        redirect_to vendor_path(@vendor)
      else 
        render :new, notice: "Errors were made in your service form. Please try again."
      end 
    else
      return render text: 'Not Allowed', status: :forbidden
    end 
  end 

  def edit 
    @vendor = Vendor.friendly.find(params[:vendor_id])
    @service = Service.find_by_id(params[:id])
    if @service.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end 
  end 

  def update
    @vendor = Vendor.friendly.find(params[:vendor_id])
    @service = Service.find_by_id(params[:id])
    if @service.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end 
    @service.update_attributes(service_params)
    redirect_to vendor_path(@vendor), notice: "The service has been updated."
  end 

  def destroy
    @vendor = Vendor.friendly.find(params[:vendor_id])
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
    params.require(:service).permit(:name, :description, :hours, :minutes, :cost_absolute, :cost_range, :tag_list, :tag, { tag_ids: [] }, :tag_ids)
  end 
  
  def current_vendor
    @current_vendor ||= Vendor.friendly.find(params[:vendor_id])
  end 

end

