class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    authorize @booking

    if @booking.save
      redirect_to root_path
    else
      redirect_to root_path, notice: 'Guard on duty'
    end
    @booking.guard.available = false
    @booking.guard.save
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.completed = true
    @booking.save
    @booking.guard.available = true
    @booking.guard.save
  end

  private

  def booking_params
    {
      guard: Guard.find(params[:guard_id]),
      user: current_user
    }
  end
end
