class PlacesController < ApplicationController
  def index
    @places = Place.all

    # the `geocoded` scope filters only places with coordinates (latitude & longitude)
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    if @place.save
      redirect_to new_place_visit_path(@place)
    else
      render :new
    end
  end

  private

  def place_params
    params.require(:place).permit(:address)
  end
end
