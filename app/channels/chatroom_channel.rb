class ChatroomChannel < ApplicationCable::Channel

  def subscribed
    chatroom = Chatroom.find(params[:id])
    # stream_from "chatroom-#{chatroom.id}"
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

end
