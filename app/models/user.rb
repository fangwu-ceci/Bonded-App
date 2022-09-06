class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :groups, through: :user_group, class_name: "Group", foreign_key: "user_id"
  has_many :posts, dependent: :destroy, class_name: "Post"
  has_many :messages, dependent: :destroy
  has_one_attached :photo
  validates_presence_of :first_name, :last_name, :email, :age, :about, :location
  validates :about, length: { minimum: 5 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :usergroups
end
