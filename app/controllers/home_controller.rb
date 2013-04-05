class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @search = "America"
  end
  
  def search
    @search = params[:search].blank? ? "America" : params[:search]
  end
end
