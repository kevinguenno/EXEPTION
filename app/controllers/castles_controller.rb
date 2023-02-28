class CastlesController < ApplicationController

  def index
    @castles = Castle.all
  end

  def show

  end

  private

  def castle_params
    params.require(:caslte).permit(:title, :description, :location, :price, :capacity, :photo, :category)
  end
end
