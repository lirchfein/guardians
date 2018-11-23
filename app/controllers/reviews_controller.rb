class ReviewsController < ApplicationController
  def create
    @guard = params[:guard_id]
    @review = Review.new(params_permit)
    @review.guard = @guard
    if @review.save
      redirect_to guard_path(@guard)
    # else
      # Do something here!
    end
  end

  private

  def params_permit
    params.require(:review).permit(:content, :rating)
  end
end
