class CastlesController < ApplicationController
  before_action :set_castle, only: %i[show]

  def show
    @booking = Booking.new
  end

  private

  def set_castle
    @castle = Castle.find(params[:id])
  end
end
