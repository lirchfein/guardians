class UsersController < ApplicationController
  def show
    # data used for user
    @user = User.find(params[:id])
    @open_bookings = @user.bookings.reject(&:completed)
    @left_bookings_space = 5 - @open_bookings.length # used to show not too many bookings
    @completed_bookings = @user.bookings.select(&:completed)
    authorize @user

    # data used for user's hero/secret ID
    @guard = Guard.where(user_id: params[:id]).last
    if @guard
      @guard_open_bookings = @guard.bookings.reject(&:completed)
      @guard_open_bookings = @guard.bookings.reject(&:confirmed) if @guard_open_bookings.empty?
      @guard_left_bookings_space = 5 - @guard_open_bookings.length
      @guard_completed_bookings = @guard.bookings.select(&:completed)
    end
  end

  def confirm
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.confirmed = true
    @booking.save
    @booking.guard.available = false
    @booking.guard.save
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js # <-- will render `app/views/users/confirm.js.erb`
    end
  end

  def complete
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.completed = true
    @booking.save
    @booking.guard.available = true
    @booking.guard.save
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js # <-- will render `app/views/users/confirm.js.erb`
    end
  end

  def cancel
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js # <-- will render `app/views/users/confirm.js.erb`
    end
  end
end
