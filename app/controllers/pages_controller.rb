class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def stop
    @contact = current_user.contacts.first
  end

end
