class BlogsController < ApplicationController

  def index
    ## Set a variable to all Blogs inside the database.
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

end
