class User < ApplicationRecord
  has_many :guard, as: 'owned_guards'
  has_many :bookings
  has_many :guards, through: :bookings, as: 'rented_guards'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
