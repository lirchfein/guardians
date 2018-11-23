class Review < ApplicationRecord
  belongs_to :guard
  validates :content, presence: true
  validates :rating, presence: true
end
