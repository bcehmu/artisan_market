class ContactsController < ApplicationController
  before_action :setup
  def index
  end

  def edit
    @contact = Contact.where(user_id: current_user.id).first
    if @contact == nil
      @contact = Contact.create(user_id: current_user.id)
      @contact.save
    end

  end

  def show
    @contact = Contact.find(params[:id])
  end

  def update
    # raise params.inspect

    @contact = Contact.find(params[:id].to_i)
    @contact.update(name: params[:contact][:name], description: params[:contact][:description], email: params[:contact][:email], address: params[:contact][:address], prefered_frequency: params[:contact][:prefered_frequency])
    @contact.avatar.attach(params[:contact][:avatar])
    @contact.logo.attach(params[:contact][:logo])
    @contact.save
    redirect_to contacts_path
  end

  private
  def setup
    @contacts = Contact.all
  end
end
