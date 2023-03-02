class Owner::CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_castle, only: %i[show]

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user_id = current_user.id
    @castle.save
    redirect_to castles_path
  end

  private

  def set_castle
    @castle = Castle.find(params[:id])
  end

  def castle_params
    params.require(:castle).permit(:title, :description, :location, :price, :capacity, :photo, :category)
  end

end
