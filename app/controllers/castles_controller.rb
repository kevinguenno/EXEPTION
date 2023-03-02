class CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_castle, only: %i[show]

  def show
    @booking = Booking.new
    @markers = [{
      lat: @castle.latitude,
      lng: @castle.longitude,
      marker_html: render_to_string(partial: "marker")
    }]
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
