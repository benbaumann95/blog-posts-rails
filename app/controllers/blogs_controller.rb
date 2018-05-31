class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_path(@blog)
    else
      render :new
    end
  end

  def update
  end

  def show

  end

  def destroy
    @blog.destroy
    redirect to blog_path
  end


  private

  def blog_params
    params.require(:blog).permit(:title, :content, :author, :likes)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
