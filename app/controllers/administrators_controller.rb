class AdministratorsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @vendors = Vendor.all
    @services = Service.all
    @tags = Tag.all
    @tag = Tag.new
  end 
end
