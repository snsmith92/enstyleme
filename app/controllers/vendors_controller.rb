class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end 
  
  def new
    @vendor = Vendor.new
  end 

  def create

  end 
end
