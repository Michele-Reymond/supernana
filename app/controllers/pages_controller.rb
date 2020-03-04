class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @button_page = true
  end

  def stop
    @alert = current_user.alerts.last
    @contacts = current_user.contacts
  end

  def resources
    @chat_rooms = ChatRoom.all
  end
end
