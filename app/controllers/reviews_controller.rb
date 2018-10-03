class ReviewsController < ApplicationController


def new
 @review = Review.new
end

def create
@review = Review.new(review_params)
if @review.valid?
  @review.save
  redirect_to restaurant_path
else
  render :new

end


end

private

def review_params
    params.require(:review).permit(:review, :user_id, :restuarant_id)
end
  end
