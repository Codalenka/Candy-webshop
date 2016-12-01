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

  def order_by_name
    @products = Product.order_by_name
    render action: :index
  end

  def order_by_price
    @products = Product.order_by_price
    render action: :index
  end

  def order_by_created_at
    @products = Product.order_by_created_at
    render action: :index
  end

end


private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price)
  end
