class MediaController < ApplicationController
  before_action :setup

  def new
    @medi = Medium.new
  end

  def create
    @medi = Medium.create(name: params[:medium][:name], link: params[:medium][:link], description: params[:medium][:description], musician_id: current_user.musician.id)
    @medi.picture.attach(params[:medium][:picture])
    @medi.save
    redirect_to musician_path(current_user.musician)
  end
  

  def index
    if params["search"]
      
      @filter = params["search"]
      @media = Medium.all.search_medium("#{@filter}")
    else
      @media= Medium.all
    end
    respond_to do |format|
      format.html
      format.js
    end  
    
  end

  def show

    @medium = Medium.find(params[:id])
  end

  def edit
    @medium = Medium.find(params[:id])

  end

  def update
    # raise params.inspect

    @medium = Medium.find(params[:id].to_i)
    @medium.update(name: params[:medium][:name], link: params[:medium][:link], description: params[:medium][:description], musician_id: current_user.musician.id)
    @medium.picture.attach(params[:medium][:picture])
    @medium.save
    redirect_to media_path
  end

  def destroy
    # raise params.inspect
    x = Medium.find(params[:id].to_i)
    x.destroy
    redirect_to media_path
  end

  private
  def setup
    @media = Medium.all
  end
end
