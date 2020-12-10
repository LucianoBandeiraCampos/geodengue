class PlacesController < ApplicationController
  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.valid?   # new place that did not exist before
      @place.save
    else # the place already exists in the db
      @place = Place.find_by_address(place_params[:address])
    end
    redirect_to new_place_visit_path(@place)
  end

  private

  def place_params
    params.require(:place).permit(:address)
  end
end
