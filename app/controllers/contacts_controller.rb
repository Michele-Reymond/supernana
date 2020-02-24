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
      redirect_to user_path(@user) #en attendant la page show du user
    else
      render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number)
  end

end
