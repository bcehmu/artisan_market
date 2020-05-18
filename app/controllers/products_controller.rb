class ProductsController < ApplicationController

  before_action :setup

  def new
    @prod = Product.new
  end

  def create
    @prod = Product.create(name: params[:product][:name], category: params[:product][:category], description: params[:product][:description], base_price: params[:product][:base_price], luthier_id: current_user.luthier.id)
    @prod.picture.attach(params[:product][:picture])
    @prod.save
    redirect_to luthier_path(current_user.luthier)
  end
  

  def index
    
  end

  def show

    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])

  end

  def update
    # raise params.inspect

    @product = Product.find(params[:id].to_i)
    @product.update(name: params[:product][:name], category: params[:product][:category], description: params[:product][:description], base_price: params[:product][:base_price])
    @product.picture.attach(params[:product][:picture])
    @product.save
    redirect_to products_path
  end

  def destroy
    # raise params.inspect
    x = Product.find(params[:id].to_i)
    x.destroy
    redirect_to products_path
  end

  private
  def setup
    @products = Product.all
  end

  
  
end
