class PlacesController < ApplicationController

  def index 
    @places = Place.paginate(:name => params[:page], :per_page => 3)
  end
end