class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end


  def show
    @categories = Category.all
    @products = Product.order(params[:sort])
    @category = Category.find(params[:id])
  end
end


private
  def set_category
    @category = Category.find(params[:id])
  end
