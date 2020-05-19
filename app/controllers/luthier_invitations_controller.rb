class LuthierInvitationsController < ApplicationController
  before_action :setup
  def index
  end

  def new
    @invi = LuthierInvitation.new
  end

  def create
    @invi = LuthierInvitation.create(msg: params[:luthier_invitation][:msg], luthier_id: current_user.luthier.id)

    @invi.save
    redirect_to new_luthier_invitation_path
  end 

  # edit and update methods are for new user applying role as luthier
  def edit
    @inv = LuthierInvitation.first
    
  end

  def update
    # raise params.inspect
    @inv1 = LuthierInvitation.where(msg: params[:luthier_invitation][:msg]).first
    if (@inv1 != nil) and (@inv1.user_id == nil)
      @inv1.update(user_id: current_user.id)
      @inv1.save

      new_luthier = Luthier.create(user: current_user)
      new_luthier.save
    end
    redirect_to products_path
  end

  def destroy
    # raise params.inspect
    x = LuthierInvitation.find(params[:id].to_i)
    x.destroy
    redirect_to new_luthier_invitation_path
  end

  private
  def setup
    if current_user.luthier != nil
      @invitations = LuthierInvitation.where(luthier: current_user.luthier)
    else
      # redirect_to products_path
    end 
  end

end
