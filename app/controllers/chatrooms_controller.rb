class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(post_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      redirect_to group_path(@group)
    else
      render :new, status: :unprocessable_entity
    end
  end

end
