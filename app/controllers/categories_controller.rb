class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params["id"])
    render :show
  end

  def new
    @category = Category.new
    render :new
  end

  def create
    @category = Category.create(
      name: params[:category][:name],
    )
    redirect_to "/categories"
  end
end
