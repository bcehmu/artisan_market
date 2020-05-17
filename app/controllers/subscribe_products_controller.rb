class SubscribeProductsController < ApplicationController
  before_action :subscribe_products_setup
  def index
  end

  def edit
  end

  def update
    # raise params.inspect

    # @product = Product.find(params[:id].to_i)
    if (SubscribeProduct.where(user_id: current_user.id, product_id: params[:id].to_i).count == 0)
      s = SubscribeProduct.create(user_id: current_user.id, product_id: params[:id].to_i)
      s.save
    else
      SubscribeProduct.where(user_id: current_user.id, product_id: params[:id].to_i).delete_all
    end
  end

  private
  def subscribe_products_setup
    @subscribe_products = SubscribeProduct.where(user_id: current_user.id)
  
  end
end
