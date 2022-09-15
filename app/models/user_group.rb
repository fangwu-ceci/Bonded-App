class UserGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group
  # validation - uniqueness user_group combination, then drop db and rails db:seed
end
