class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end


  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @products = Product.order(params[:sort])
  end
end


private
  def set_category
    @category = Category.find(params[:id])
  end
