class FiltersController < ApplicationController
  def index
    # raise params.inspect
    if params[:search]
        redirect_to ("/products?search=#{params[:search]}")
    else
      redirect_to ("/filters/search")
    end
  end

  def search
      # raise params.inspect
      if params[:search]
          redirect_to ("/products?search=#{params[:search]}")
      else
        # redirect_to ("/products")
      end
  end
end
