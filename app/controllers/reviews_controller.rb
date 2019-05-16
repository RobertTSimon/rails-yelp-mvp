class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(allowed_params)
    # @review.restaurant = Restaurant.find(params[:review][:restaurants_id])
    @review.save
    redirect_to restaurant_path(@review.restaurant_id)
  end

  private

  def allowed_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
