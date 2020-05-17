class SubscribeMediaController < ApplicationController
  before_action :subscribe_media_setup
  def index
  end

  def edit
  end

  def update
    # @medium = Medium.find(params[:id].to_i)
    if (SubscribeMedium.where(user_id: current_user.id, medium_id: params[:id].to_i).count == 0)
      m = SubscribeMedium.create(user_id: current_user.id, medium_id: params[:id].to_i)
      m.save
    else
      SubscribeMedium.where(user_id: current_user.id, medium_id: params[:id].to_i).delete_all
    end
  end

  private
  def subscribe_media_setup
    @subscribe_media = SubscribeMedium.where(user_id: current_user.id)
  
  end
end
