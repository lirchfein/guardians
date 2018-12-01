class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    authorize @booking

    if @booking.save
      redirect_to user_path(current_user)
    else
      redirect_to root_path, notice: 'Guard on duty'
    end
    # those steps will happen after the confirm action
    # @booking.guard.available = false
    # @booking.guard.save
  end

  # def update
  #   @booking = Booking.find(params[:id])
  #   authorize @booking
  #   @booking.completed = true
  #   @booking.save
  #   @booking.guard.available = true
  #   @booking.guard.save
  # end

  # def confirm
  #   @booking = Booking.find(params[:id])
  #   authorize @booking
  #   @booking.confirmed = true
  #   @booking.save
  #   @booking.guard.available = false
  #   @booking.guard.save
  #   respond_to do |format|
  #     format.html { redirect_to user_path(current_user) }
  #     format.js # <-- will render `app/views/users/confirm.js.erb`
  #   end
  # end

  # def cancel
  #   @booking = Booking.find(params[:id])
  #   authorize @booking
  #   @booking.destroy
  # end

  private

  def booking_params
    {
      guard: Guard.find(params[:guard_id]),
      user: current_user
    }
  end
end
