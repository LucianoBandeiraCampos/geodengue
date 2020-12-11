class PlacesController < ApplicationController
  def index
    @places = Place.all
    @visits = Visit.all
    # the `geocoded` scope filters only places with coordinates (latitude & longitude)
    @markers = @places.geocoded.map do |place|
      place_visits = Visit.where(place_id: place.id)
      last_visit = place_visits.last
      last_state = last_visit.state
      last_focus = last_visit.focus_quantity
      icon = 'ban.svg' if last_state == "ausente" || last_state == "visita_recusada"
      icon = 'mosquito.svg' if last_state == "visita_realizada" && last_focus > 0
      icon = 'check.svg' if last_focus == 0

      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
        image_url: helpers.asset_url(icon)
      }
    end
  end

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
