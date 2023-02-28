class CastlesController < ApplicationController

  before_action :set_castle, only: %i[show]

  def show
    @booking = Booking.new
  end

  def index
    @castles = Castle.all
  end

  private

  def set_castle
    @castle = Castle.find(params[:id])
  end

  def castle_params
    params.require(:caslte).permit(:title, :description, :location, :price, :capacity, :photo, :category)
  end
  
end
