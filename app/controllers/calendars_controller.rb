class CalendarsController < ApplicationController
  before_action :authenticate_user!

  def show
    @vendor = current_user.vendor
    @availabilities = @vendor.availabilities.all
  end 

end
