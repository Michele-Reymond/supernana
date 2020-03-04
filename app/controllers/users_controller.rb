class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :stop_alert
  def show
    @user = User.find(params[:id])
    @contacts = @user.contacts
  end

  def stop_alert

  end
end
