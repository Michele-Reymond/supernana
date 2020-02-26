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
    client = Nexmo::Client.new(api_key: ENV['NEXMO_API_KEY'], api_secret: ENV['NEXMO_API_SECRET'])
    @alert = Alert.new(alert_params)
    @alert.user = current_user
    @alert.started_at = DateTime.now
    if @alert.save
      @alert.send_message(client) if @alert.user.contacts.any?
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

