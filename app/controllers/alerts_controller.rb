class AlertsController < ApplicationController
  def index
  end

  def create
    @alert = Alert.new()
    @alert.user = current_user
    @alert.started_at = DateTime.now
    if @alert.save
      redirect_to stop_path
    else
      render :new
    end
  end

  def update
  end
end
