class PlacesController < ApplicationController

  def index 
    @places = Place.all
  end

  def index  
    @places = Place.order(:name).page (params[:page]).per(5)
  end




