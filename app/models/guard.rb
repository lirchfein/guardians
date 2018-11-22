class Guard < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  mount_uploader :cover, PhotoUploader

  # belongs_to :user#, class_name: 'User'
  # belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings # , as: 'booker'
  belongs_to :user

  # mount_uploader :photo, PhotoUploader

 #  SPECIALTIES = ['drunkard', 'faceless', 'pocket-sized', 'strong', 'nice hair', 'flies']
 # :specialty,
  validates :name, :location, :rate, presence: true
  validates :name, uniqueness: true
  # validates :specialty, inclusion: { in: SPECIALTIES }
end
