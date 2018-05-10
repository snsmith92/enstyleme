class VendorsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update]

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
    if @vendor.black?
      render plain: "Sorry, no company to see here!", status: :not_found
    end 
  end 

  def update

  end 

  private

  def vendor_params
    params.require(:vendor).permit(:name, :country, :city, :address, :zip, :phone1, :phone2, :company_email, :consent)
  end 

end
