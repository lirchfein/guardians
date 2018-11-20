class GuardsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @guards = Guard.all
  end

  def new
    @guard = Guard.new
    @specialties = Guard::SPECIALTIES
  end

  def show
    @guard = Guard.find(params[:id])

  end

  def create
    @guard = Guard.new(guard_params)
    @guard.save
  end

  private

  def guard_params
    params.require(:guard).permit(:name, :specialty, :location, :rate, :picture)
  end
end
