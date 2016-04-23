class PhotosController < ApplicationController

    before_action :authenticate_user!, :only => [create]

    def create
        @place = Place.find(params[:place_id])
        @photo = Photo.new
        @place.photos.create(photo_params)
        redirect_to place_path(@place)
    end

    private

    def photo_params
        params.require(:photo).permit(:picture, :caption, :place_id)
    end
end
