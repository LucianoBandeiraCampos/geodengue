class PlacesController < ApplicationController
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
