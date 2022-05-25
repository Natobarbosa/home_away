class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validations
  has_many :users_expertises
  has_many :expertises, through: :users_expertises
  has_many :messages
  has_many :chatrooms, through: :messages
  has_many :events
  has_many :participations
  validates :origin, :residence, :first_name, :last_name, presence: true
  # Cloudinary
  # has_one_attached :photo
end
