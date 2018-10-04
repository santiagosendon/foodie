class ReviewsController < ApplicationController


def show

end
def new
 @review = Review.new
 @restaurant = Restaurant.all
end

def create
@review = Review.create(review_params)
  if @review.valid?
   @review.save
  redirect_to @review.restaurant
else
   render :show
end
end


private

def review_params
    params.require(:review).permit(:review, :user_id, :restuarant_id)
end

end
