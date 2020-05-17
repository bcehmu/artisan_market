class SubscribeMusiciansController < ApplicationController
  before_action :subscribe_musicians_setup
  def index
  end

  def edit
  end

  def update
    # raise params.inspect

    # @musician = Musician.find(params[:id].to_i)
    if (SubscribeMusician.where(user_id: current_user.id, musician_id: params[:id].to_i).count == 0)
      s = SubscribeMusician.create(user_id: current_user.id, musician_id: params[:id].to_i)
      s.save
    else
      SubscribeMusician.where(user_id: current_user.id, musician_id: params[:id].to_i).delete_all
    end
  end

  private
  def subscribe_musicians_setup
    @subscribe_musicians = SubscribeMusician.where(user_id: current_user.id)
  
  end
end
