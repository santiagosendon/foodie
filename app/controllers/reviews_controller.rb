class ReviewsController < ApplicationController

def show
@review = Review.find(params[:id])
@restaurant = Restaurant.find(params[:id])
@reviews = @restaurant.reviews
end


def new
 @review = Review.new
 #@restaurant = Restaurant.all
end

def create
@review = Review.new(review_params)
  if @review.valid?
   @review.save
  redirect_to "/reviews/#{@review.restaurant.id}"

else
  @restaurant = @review.restaurant
  # render the page with the form again
  # show user the messages at @review.errors.full_messages
   render :'restaurants/show.html.erb'
end
  # @review = Review.create(review_params)
  # # @review.review = params[:review]
  # @review.save
  # redirect_to review_path(@review)
end


private

def review_params
    params.require(:review).permit(:review, :user_id, :restaurant_id)
end

end
