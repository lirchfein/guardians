class GuardsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_authorized

  def index
    if params[:query].present?
      @guards = Guard.search_by_name_and_specialty(params[:query])
    else
      @guards = Guard.all
    end
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
  end

  def show
    @guard = Guard.find(params[:id])
    @user = current_user
    if current_user
      @pendingBookings = @user.bookings.select { |booking| !booking.confirmed }
      @pending_mission_request = @pendingBookings.any? { |pending_booking| pending_booking.guard_id == @guard.id }
    end
  end

  def create
    @guard = Guard.new(guard_params)
    @guard.user_id = current_user.id
    if @guard.cover_pic.file.nil?
      @guard.remote_cover_pic_url = "https://res.cloudinary.com/dfcud6por/image/upload/v1543676026/Guardians/placeholder_background.png"
    end
    if @guard.profile_pic.file.nil?
      @guard.remote_profile_pic_url = "https://res.cloudinary.com/dfcud6por/image/upload/v1543679242/Guardians/placeholder_profile.png"
    end

    if @guard.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def edit
    @guard = Guard.find(params[:id])
  end

  def update
    @guard = Guard.find(params[:id])
    @guard.update(guard_params)
    if @guard.save
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  private

  def guard_params
    params.require(:guard).permit(:name, :specialty, :location, :rate, :cover_pic, :profile_pic, :latitude, :longitude, :user_id, :description)
  end
end
