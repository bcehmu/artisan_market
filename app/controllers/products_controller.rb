class ProductsController < ApplicationController

  before_action :setup

  def index
    
  end

  def show
  end

  def edit
    @product = Product.find(params[:id])

  end

  def update
    # raise params.inspect

    @product = Product.find(params[:id].to_i)
    @product.update(name: params[:product][:name])
    redirect_to products_path(@product)
  end

  private
  def setup
    @products = Product.all
  end

  
  
end
