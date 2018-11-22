class GuardsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_authorized
  def index
    @guards = Guard.where.not(latitude: nil, longitude: nil)

    @markers = @guards.map do |guard|
      {
        lng: guard.longitude,
        lat: guard.latitude,
        infoWindow: { content: render_to_string(partial: "/guards/map_window", locals: { guard: guard }) }
      }
    end

  end

  def new
    @guard = Guard.new
    @specialties = Guard::SPECIALTIES
  end

  def show
    @user = current_user
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
