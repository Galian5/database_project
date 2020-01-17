class CategoriesController < ApplicationController
  def create
    @category = Category.new(params[:category])

    @category.save
  end

  def edit
    @category = Category.find(params[:id])

    @category.update(category_params)
  end

  def show
    @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
  end

  private

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
