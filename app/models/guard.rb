class Guard < ApplicationRecord
  mount_uploaders :picture, PictureUploader

  # belongs_to :user#, class_name: 'User'
  # belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings # , as: 'booker'
  belongs_to :user

  # mount_uploader :photo, PhotoUploader


  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  SPECIALTIES = ['drunkard', 'faceless', 'pocket-sized', 'strong', 'nice hair', 'flies']

  validates :name, :specialty, :location, :rate, presence: true
  validates :name, uniqueness: true
  validates :specialty, inclusion: { in: SPECIALTIES }

  include PgSearch
  pg_search_scope :search_by_name_and_specialty,
                  against: [:name, :specialty],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                        }
end
