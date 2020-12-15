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
    @visit.data = Time.now

    if @visit.state == "visita_recusada" || @visit.state == "ausente"
      @visit.save
      redirect_to visit_path(@visit), notice: 'Visita registrada com sucesso'
    elsif @visit.state == "visita_realizada"
      @visit.focus_quantity = 0
      @visit.dengue_last_3m = false
      if @visit.save
        redirect_to edit_visit_path(@visit), notice: 'Visita registrada com sucesso'
      else
        render :new, alert: 'Por favor, verifique as informações'
      end
    else
      render :new, alert: 'Por favor, verifique as informações'
    end
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    @visit = Visit.find(params[:id])
    @visit.update(visit_params)
    redirect_to visit_path(@visit)
  end

  private

  def visit_params
    params.require(:visit).permit(:state, :focus_quantity, :eliminated, :dengue_last_3m, :observations)
  end
end
