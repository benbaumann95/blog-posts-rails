class ReviewsController < ApplicationController
  def show
  end

  def new
    @blog = Blog.find(params[:blog_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.blog = Blog.find(params[:blog_id])
    if @review.save
      redirect_to blog_path(@review.blog)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:name, :content)
  end

end
