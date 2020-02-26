class MessagesController < ApplicationController

  def create

  end

  private

  def message_params
    params.require(:message).permit(:alert_id)
  end
end
