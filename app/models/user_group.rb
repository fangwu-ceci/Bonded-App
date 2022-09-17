class UserGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group
  # validation - uniqueness user_group combination, then drop db and rails db:seed
  # validates :user_group, uniqueness: true
  validates :user, uniqueness: { scope: :group,
    message: "You've already joined the group" }
end
