class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:start]
  
  def index
  end 

  def start
  end 

  def business
  end 
end
