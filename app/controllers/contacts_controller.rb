class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @user = current_user
  end

  def create
    @contact = Contact.new(contact_params)
    @user = current_user
    @contact.user = @user

    @contact.phone_number = "+41#{@contact.phone_number.delete(' ')}"

    if @contact.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @contact = Contact.find(params[:user_id])
  end

  def update
    @contact = Contact.find(params[:id])
    @user = current_user

    if @contact.update(contact_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number)
  end
end
