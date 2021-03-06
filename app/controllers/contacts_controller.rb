class ContactsController < ApplicationController
  before_action :setup
  def index
  end

  def create
    
    freq = @prefered_frequency.key(params[:contact][:prefered_frequency].to_i)
    @contact.update(name: params[:contact][:name], description: params[:contact][:description], email: params[:contact][:email], address: params[:contact][:address], prefered_frequency: freq)
    @contact.avatar.attach(params[:contact][:avatar])
    @contact.logo.attach(params[:contact][:logo])
    @contact.save
    redirect_to contacts_path

  end

  def edit
    @contact = Contact.where(user_id: current_user.id).first
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def update
    # raise params.inspect
    
    @contact = Contact.find(params[:id].to_i)
    freq = @prefered_frequency.key(params[:contact][:prefered_frequency].to_i)
    @contact.update(name: params[:contact][:name], description: params[:contact][:description], email: params[:contact][:email], address: params[:contact][:address], prefered_frequency: freq)
    # @contact.update(name: params[:contact][:name], description: params[:contact][:description], email: params[:contact][:email], address: params[:contact][:address], prefered_frequency: params[:contact][:prefered_frequency])
    @contact.avatar.attach(params[:contact][:avatar])
    @contact.logo.attach(params[:contact][:logo])
    @contact.save
    redirect_to contacts_path
  end

  private
  def setup
    @prefered_frequency = {instant: -1, day: 0, week: 1, indefinite: 2}
    @contacts = Contact.all
    @contact = Contact.where(user: current_user).first
    if @contact == nil
      @contact = Contact.create(user: current_user)
      @contact.save
    end
  end
end
