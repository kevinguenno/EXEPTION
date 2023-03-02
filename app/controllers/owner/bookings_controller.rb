class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings_as_owner
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(validates: "accepted")
    redirect_to owner_bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update(validates: "declined")
    redirect_to owner_bookings_path
  end

  def cancel_decision
    @booking = Booking.find(params[:id])
    @booking.update(validates: "pending")
    redirect_to owner_bookings_path
  end


  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :total_price, :validates)
  end

end
