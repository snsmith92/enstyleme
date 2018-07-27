module ApplicationHelper
  def current_vendor
    if user_signed_in? && current_user.vendors.present?
      @current_vendor ||= Vendor.find(params[:id])
    end 
  end 

  def categories
    Category.all
  end

  def title(text)
    content_for :title, text
  end
end
