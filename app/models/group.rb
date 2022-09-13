class Group < ApplicationRecord
  has_many :user_groups
  has_many :posts
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def self.search(category, location)
    where("category ILIKE ? and location ILIKE ?", "%#{category}%", "%#{location}%")
  end
end
