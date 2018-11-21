class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @open_bookings = @user.bookings.reject(&:completed)
    @left_bookings_space = 5 - @open_bookings.length # used to show not too many bookings
    @completed_bookings = @user.bookings.select(&:completed)
    authorize @user
  end
end
