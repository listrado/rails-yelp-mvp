class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(
      name:         params['restaurant']['name'],
      address:      params['restaurant']['address'],
      phone_number: params['restaurant']['phone_number'],
      category:     params['restaurant']['category']
    )
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end
  end
end
