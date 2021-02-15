class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
   
    @review = Review.new(review_params)
    @review.user = current_user
   
    if @review.save!
    
      # redirect_to consultations_path
      redirect_to  reviews_path
    else
      @review = Review.new
      render :new
    end
    
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :photo, :rating, :user)
  end
end
