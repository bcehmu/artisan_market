class MusiciansController < ApplicationController
  before_action :musicians_setup
  
  def index
  end

  def show
  end

  def edit
  end

  private
  def musicians_setup
    @media = Medium.where("musician_id = #{params[:id]}")
  end
end
