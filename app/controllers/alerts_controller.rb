require 'nexmo'


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
    @alert = Alert.new(alert_params)
    @alert.user = current_user
    @alert.started_at = DateTime.now
    if @alert.save
      render json: {path: stop_path}
    else
      render :new
    end
  end

  def update
    @alert = Alert.find(params[:id])
    @alert.update(ended_at: DateTime.now)
    redirect_to root_path
  end

  private

  def alert_params
    params.require(:alert).permit(:latitude,:longitude)
  end
end

