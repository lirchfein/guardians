class GuardsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_authorized

  def index
<<<<<<< HEAD
    @guards = Guard.where.not(latitude: nil, longitude: nil)

    @markers = @guards.map do |guard|
      {
        lng: guard.longitude,
        lat: guard.latitude,
        infoWindow: { content: render_to_string(partial: "/guards/map_window", locals: { guard: guard }) }
      }
    end

=======
    if params[:query].present?
      @guards = Guard.search_by_name_and_specialty(params[:query])
    else
      @guards = Guard.all
    end
>>>>>>> c98c9e558de5d91f7de62bc73146535b7219f0e9
  end

  def new
    @guard = Guard.new
  end

  def show
    @user = current_user
    @guard = Guard.find(params[:id])
  end

  def create
    @guard = Guard.new(guard_params)
    @guard.user_id = current_user.id
    if @guard.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  private

  def guard_params
    params.require(:guard).permit(:name, :specialty, :location, :rate, { picture: [] }, :latitude, :longitude, :user_ids)
  end
end
