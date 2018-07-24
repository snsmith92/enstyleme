module ApplicationHelper
  def current_vendor
    @current_vendor ||= Vendor.find(params[:id])
  end 

  def categories
    Category.all
  end

  def title(text)
    content_for :title, text
  end
end
