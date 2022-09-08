class Chatroom < ApplicationRecord
  has_many :messages
  has_one :chatroom_requester, class_name: 'User', foreign_key: :chatroom_requester_id
  has_one :chatroom_receiver, class_name: 'User', foreign_key: :chatroom_receiver_id
end
