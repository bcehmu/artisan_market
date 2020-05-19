class MusicianInvitationsController < ApplicationController
  before_action :setup
  def index
  end

  def new
    @invi = MusicianInvitation.new
  end

  def create
    @invi = MusicianInvitation.create(msg: params[:musician_invitation][:msg], musician_id: current_user.musician.id)

    @invi.save
    redirect_to new_musician_invitation_path
  end 

  # edit and update methods are for new user applying role as musician
  def edit
    @inv = MusicianInvitation.first
  end


  def update
    # raise params.inspect
    @inv1 = MusicianInvitation.where(msg: params[:musician_invitation][:msg]).first
    if (@inv1 != nil) and (@inv1.user_id == nil)
      @inv1.update(user_id: current_user.id)
      @inv1.save

      new_musician = Musician.create(user: current_user)
      new_musician.save
    end
    redirect_to media_path
  end

  def destroy
    # raise params.inspect
    x = MusicianInvitation.find(params[:id].to_i)
    x.destroy
    redirect_to new_musician_invitation_path
  end

  private
  def setup
    if current_user.musician != nil
      @invitations = MusicianInvitation.where(musician: current_user.musician)
    else
      # redirect_to root_path
    end 
  end

end
