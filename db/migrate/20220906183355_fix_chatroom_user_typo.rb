class FixChatroomUserTypo < ActiveRecord::Migration[7.0]
  def change
    rename_column :chatrooms, :chatroom_reciever_id, :chatroom_receiver_id
  end
end
