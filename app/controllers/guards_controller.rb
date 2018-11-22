class GuardsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_authorized

  def index
    if params[:query].present?
      @guards = Guard.search_by_name_and_specialty(params[:query])
    else
      @guards = Guard.all
    end
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
    @guard.picture = current_user.avatar
    @guard.save
  end

  private

  def guard_params
    params.require(:guard).permit(:name, :specialty, :location, :rate, :picture_cache, :cover_cache, :latitude, :longitude, :user_ids)
  end
end
