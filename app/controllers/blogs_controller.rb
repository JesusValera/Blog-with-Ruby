class BlogsController < ApplicationController

  def index
    ## Set a variable to all Blogs inside the database.
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new

  end

  def create
    @blog = Blog.create(params.require(:blog).permit(:title, :content))

    if @blog.save
      redirect_to root_path
    else
      render :new
    end

  end

end
