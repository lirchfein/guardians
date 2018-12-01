class Guard < ApplicationRecord
  mount_uploader :cover_pic, PhotoUploader
  mount_uploader :profile_pic, PhotoUploader

  # belongs_to :user#, class_name: 'User'
  # belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings # , as: 'booker'
  belongs_to :user

  # mount_uploader :photo, PhotoUploader


  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?



  validates :name, :specialty, :location, :rate, presence: true
  validates :name, uniqueness: true
  validates :specialty, presence: true

  include PgSearch
  pg_search_scope :search_by_name_and_specialty,
                  against: [:name, :specialty],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                        }
end
