class AddUsersToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :chatroom_requester_id, :integer
    add_column :chatrooms, :chatroom_reciever_id, :integer
  end
end
