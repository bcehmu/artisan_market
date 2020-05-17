class LuthiersController < ApplicationController
  before_action :luthier_setup

  def index
  end

  def show
    # @luthier = Luthier.find(params[:id])
  end

  def edit
  end

  private
  def luthier_setup
    
    # @products = Product.where(luthier: current_user.luthier)
    if params[:id] != nil
      @products = Product.where(luthier: params[:id])
    else
      @products = Product.all
    end
  end
end
