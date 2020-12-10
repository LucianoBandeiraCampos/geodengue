class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def new
    @visit = Visit.new
  end

  # index new create show
  def create
    @visit = Visit.new(visit_params)
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
