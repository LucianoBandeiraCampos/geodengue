class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def new
    @visit = Visit.new
    @place = Place.find(params[:place_id])
  end

  def create
    @visit = Visit.new(visit_params)
    @place = Place.find(params[:place_id])
    @visit.place = @place
    @visit.user = current_user
    if @visit.save
      redirect_to visit_path(@visit)
    else
      render :new
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:state, :focus_quantity, :eliminated, :dengue_last_3m, :observations)
  end
end
