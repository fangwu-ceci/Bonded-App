class Group < ApplicationRecord
  has_many :user_group
  has_many :posts
end
