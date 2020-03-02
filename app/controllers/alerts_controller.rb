require 'nexmo'


class AlertsController < ApplicationController


  def index
    @alerts = Alert.where("started_at::date = ? AND ended_at IS NULL", Date.today)
    @markers = @alerts.map do |alert|
      {
        lat: alert.latitude,
        lng: alert.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { alert: alert }),
        image_url: helpers.asset_url('marker.png')
      }
    end
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
    params.require(:alert).permit(:latitude, :longitude)
  end
end

