class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def review_params
   params.require(:review).permit(:content, :rating)
  end
end
