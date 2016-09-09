class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    # @restaurant.reviews <=> Review.where(restaurant_id: @restaurant.id)
    # @review = Review.find(1)
    # @review.restaurant <=> Restaurant.find(@review.restaurant_id)
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
