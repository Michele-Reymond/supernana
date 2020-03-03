class ChatRoomsController < ApplicationController
  def index
    @chat_rooms = ChatRoom.all
  end

  def show
    @chat_rooms = ChatRoom.all
    @chat_room = ChatRoom.includes(chat_messages: :user).find(params[:id])
  end
end
