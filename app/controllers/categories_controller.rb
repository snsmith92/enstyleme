class CategoriesController < ApplicationController
  def show
    @category = Category.friendly.find(params[:id])
    @vendors = Vendor.where(category_id: @category).paginate(:page => params[:page], :per_page => 20)
  end 
end
