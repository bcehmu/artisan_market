class LuthiersController < ApplicationController
  before_action :luthier_setup

  def index
  end

  def show
  end

  def edit
  end

  private
  def luthier_setup
    @products = Product.where("luthier_id = #{params[:id]}")
  end
end
