class BlogsController < ApplicationController

  before_action :find_id, only: [:show, :update, :destroy, :edit]

  def index
    ## Set a variable to all blogs inside the database.
    @blogs = Blog.all
  end

  def show
    @blog = find_id
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(define_params)

    if @blog.save
      redirect_to root_path
    else
      render :new
    end

  end

  def edit
    @blog = find_id
  end

  def update
    @blog = find_id

    if @blog.update(define_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to root_path
  end

  private

  def find_id
    @blog = Blog.find(params[:id])
  end

  def define_params
    params.require(:blog).permit(:title, :content)
  end

end
