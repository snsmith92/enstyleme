class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:start, :calendar]
  
  def index
  end 

  def start
  end 

  def business
  end 

  def calendar

  end 
end
