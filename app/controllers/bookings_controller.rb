class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
    @castles_owned = Castle.where(user_id: current_user.id)
    # @bookings_on_a_castle = Booking.where(castle_id: @castles_bookings_as_owner[0].id)
    @all_bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.validates = "pending"
    @booking.user_id = current_user.id
    @booking.castle_id = params[:castle_id]

    if @booking.save
      redirect_to bookings_path
    else
      redirect_to castle_path(params[:castle_id])
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking = Booking.update(params[:validates])
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
    redirect_to bookings_path
  end


 private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :total_price)
  end
end
