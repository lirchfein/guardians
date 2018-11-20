class Guard < ApplicationRecord
  # belongs_to :user#, class_name: 'User'
  # belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :bookings
  has_many :users, through: :bookings # , as: 'booker'

  mount_uploader :photo, PhotoUploader

  SPECIALTIES = ['air', 'ground', 'water', 'loves cat', 'nice hair']

  validates :name, :specialty, :location, :rate, presence: true
  validates :name, uniqueness: true
  validates :specialty, inclusion: { in: SPECIALTIES }
end
