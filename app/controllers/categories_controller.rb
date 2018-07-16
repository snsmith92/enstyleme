class CategoriesController < ApplicationController
  def show
    @category = Category.friendly.find(params[:id])
    @vendors = Vendor.where(category_id: @category)
  end 
end
