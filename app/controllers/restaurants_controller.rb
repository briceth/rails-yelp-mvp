class RestaurantsController < ApplicationController
before_action :set_animal, only: [:show, :new, :edit, :create]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  private

  def set_animal
    @restaurant = Restaurant.find(params[:id])
  end
end
