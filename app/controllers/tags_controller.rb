class TagsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :destroy]

  def new
    @tag = Tag.new
  end 

  def create
    @tag = Tag.create(tag_params)
    redirect_to administrators_path
  end 

  def destroy 
    @tag = Tag.find_by_id(params[:id])
    @tag.destroy
    redirect_to administrators_path
  end 

  private

  def tag_params 
    params.require(:tag).permit(:name)
  end 
end
