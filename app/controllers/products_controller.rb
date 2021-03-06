
class ProductsController < ApplicationController

  def index
    @product = Product.all
  end

  def create
    @product = Product.create(product_params)
    if @product.save
    flash[:success] = "Great! Product created!"
    redirect_to product_path(@product)
    else
    redirect_to :back
    end
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end


  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.update(product_params)
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
    end


private
  def product_params
    params.require(:product).permit(:name, :price, :description)
  end


end
