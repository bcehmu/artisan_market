class MusiciansController < ApplicationController
  before_action :musicians_setup
  
  def index
  end

  def show
    if params[:id] != nil
      @c = Contact.where(user: Musician.find(params[:id]).user.id).first
    end
  end

  def edit
  end

  private
  def musicians_setup
    if params[:id] != nil
      @media = Medium.where(musician: params[:id])
      
    else
      @media = Medium.all
    end

    # @invitation_musician ="musician_cool"
  end

  
end
