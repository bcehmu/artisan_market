class FiltersController < ApplicationController
  def index
    # raise params.inspect
    if params[:search]
        redirect_to ("/products?search=#{params[:search]}")
    else
      if params[:search_medium]
        redirect_to ("/media?search=#{params[:search]}")
      else
        redirect_to ("/filters/search")
      end
    end
  end

  def search
      # raise params.inspect
      if params[:search]
          redirect_to ("/products?search=#{params[:search]}")
      else
        if params[:search_medium]
          redirect_to ("/media?search=#{params[:search_medium]}")
        else
          # redirect_to ("/media")
        end
      end
  end
end
