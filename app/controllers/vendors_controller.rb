class VendorsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
    @vendors = Vendor.all
  end 
  
  def new
    @vendor = Vendor.new
  end 

  def create
    @vendor = current_user.vendors.create(vendor_params)
    if @vendor.valid?
      redirect_to vendor_path(@vendor)
    else 
      render :new, status: :unprocessable_entity
    end 
  end 

  def show
    @vendor = Vendor.find_by_id(params[:id])
    if @vendor.blank?
      render plain: "Sorry, no company to see here!", status: :not_found
    end 
  end 

  def edit
    @vendor = Vendor.find(params[:id])
    if @vendor.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end 
  end 

  def update
    @vendor = Vendor.find_by_id(params[:id])
    if @vendor.blank?
      render plain: "Sorry, no company to see here!", status: :not_found
    end 
    if @vendor.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end 
    @vendor.update_attributes(vendor_params)

    if @vendor.valid?
      redirect_to vendor_path(@vendor)
    else
      render :new, status: :unprocessable_entity
    end 
  end 

  private

  helper_method :current_vendor
  def current_vendor
    @current_vendor ||= Vendor.find(params[:id])
  end 

  def vendor_params
    params.require(:vendor).permit(:name, :country, :city, :address, :zip, :phone1, :phone2, :company_email, :consent)
  end 

end
