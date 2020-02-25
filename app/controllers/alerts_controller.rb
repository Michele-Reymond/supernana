class AlertsController < ApplicationController
  def index
  end

  def index
    @alerts = Alert.where("started_at::date = ?", Date.today)
  end

  def show
    @alert = Alert.find(params[:id])
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
    @alert = Alert.find(params[:id])
    @alert.update(ended_at: DateTime.now)
    redirect_to root_path
  end
end

