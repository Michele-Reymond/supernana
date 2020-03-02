class ChatMessagesController < ApplicationController
def create
    @chat_message = ChatMessage.new(message_params)
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @chat_message.chat_room = @chat_room
    @chat_message.user = current_user
    if @chat_message.save
      respond_to do |format|
        format.html { redirect_to chat_room_path(@chat_room) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "chat_rooms/show" }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:chat_message).permit(:content)
  end
end
