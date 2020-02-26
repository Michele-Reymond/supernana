class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @button_page = true
  end

  def stop
    @alert = current_user.alerts.last
    @contact = current_user.contacts.first
  end

end
