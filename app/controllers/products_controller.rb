class ProductsController < ApplicationController

  def index
    @product = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
  end


  def edit
    @product = Product.find(params[:id])
  end


  def new
    @product = Product.new(product_params)
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to product_path(@product)
  end



private
  def product_params
    params.permit(:name,:description,:price)
  end

end
