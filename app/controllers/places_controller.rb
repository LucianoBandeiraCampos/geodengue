class PlacesController < ApplicationController
  def index
    @places = Place.all
    @markers = get_all_markers(@places)
  end

  def show
    @place = Place.find(params[:id])
    @visitas_do_place = @place.visits.includes(:user)
  end

  def new
    @place = Place.new
    @places = Place.all
    @markers = get_all_markers(@places)
  end

  def create
    @place = Place.new(place_params)
    if @place.valid? # new place that did not exist before
      @place.save
    else # the place already exists in the db
      @place = Place.find_by_address(place_params[:address])
    end
    redirect_to new_place_visit_path(@place)
  end

  private

  def get_all_markers(places)
    @markers = places.geocoded.includes(:visits).map do |place|
      last_visit = place.visits.max_by(&:data)
      next unless last_visit

      icon = 'ausente.svg' if last_visit.state == 'ausente'
      icon = 'visita_recusada.svg' if last_visit.state == 'visita_recusada'
      if last_visit.state == 'visita_realizada'
        last_visit.focus_quantity.positive? ? icon = 'mosquito.svg' : icon = 'check.svg'
      end

      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
        image_url: helpers.asset_url(icon)
      }
    end
  end

  def place_params
    params.require(:place).permit(:address)
  end
end
