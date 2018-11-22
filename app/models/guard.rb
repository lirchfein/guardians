class Guard < ApplicationRecord
  # belongs_to :user#, class_name: 'User'
  # belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings # , as: 'booker'

  # mount_uploader :photo, PhotoUploader

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
