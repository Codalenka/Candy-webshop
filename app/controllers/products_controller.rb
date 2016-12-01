class ProductsController < ApplicationController
  before_action :set_product, only: [:show]


  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos
  end

end


private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price)
  end
