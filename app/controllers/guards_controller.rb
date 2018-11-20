class GuardsController < ApplicationController
  def index
    @guards = Guard.all
  end

  def new
    @guard = Guard.new
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
