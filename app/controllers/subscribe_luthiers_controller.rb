class SubscribeLuthiersController < ApplicationController
  before_action :subscribe_luthiers_setup
  def index
  end

  def edit

  end

  def update
    # raise params.inspect

    # @luthier = Luthier.find(params[:id].to_i)
    if (SubscribeLuthier.where(user_id: current_user.id, luthier_id: params[:id].to_i).count == 0)
      s = SubscribeLuthier.create(user_id: current_user.id, luthier_id: params[:id].to_i)
      s.save
    else
      SubscribeLuthier.where(user_id: current_user.id, luthier_id: params[:id].to_i).delete_all
    end
    redirect_to products_path
  end

  private
  def subscribe_luthiers_setup
    @subscribe_luthiers = SubscribeLuthier.where(user_id: current_user.id)
  end
end
