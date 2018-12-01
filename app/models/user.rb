class User < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  after_create :set_default_avatar
  # has_many :guard, as: 'owned_guards'
  has_many :bookings, dependent: :destroy
  has_many :guards, through: :bookings # , as: 'rented_guards'

  def set_default_avatar
    if avatar.file.nil?
      self.remote_avatar_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543679242/Guardians/placeholder_profile.png'
    end
    self.save
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
