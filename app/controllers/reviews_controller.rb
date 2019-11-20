class ReviewsController < ApplicationController
  def index
    @reviews = Reviews.all
  end

  def show
  	@review = Review.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    @review.restaurant = @restaurant
  end

  def create
    @review = Review.new(
      restaurant_id:      params['review']['restaurant_id'],
      rating:             params['review']['rating'],
      content:            params['review']['content']
    )
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id)
    else
      render 'new'
    end
  end
end
