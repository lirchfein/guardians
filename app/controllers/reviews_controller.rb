class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @guard = Guard.find(params[:guard_id])
    @review = Review.new(params_permit)
    @review.guard = @guard
    authorize @review
    if @review.save
      redirect_to guard_path(@guard)
    else
      render 'new'
    end
  end

  private

  def params_permit
    params.require(:review).permit(:content, :rating)
  end
end
