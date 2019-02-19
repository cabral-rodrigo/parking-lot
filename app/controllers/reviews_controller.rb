class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to @booking
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:picture, :rating_user, :date)
  end
end
