class Group < ApplicationRecord
  has_many :user_groups
  has_many :posts

  def self.search(category, location)
    where("category ILIKE ? and location ILIKE ?", "%#{category}%", "%#{location}%")
  end
end
