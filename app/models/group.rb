class Group < ApplicationRecord
  has_many :user_groups
  has_many :posts
  has_one_attached :photo

  def self.search(category, location)
    where("category ILIKE ? and location ILIKE ?", "%#{category}%", "%#{location}%")
  end
end
