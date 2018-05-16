module ApplicationHelper
  def current_vendor
    @current_vendor ||= Vendor.find(params[:id])
  end 
end
