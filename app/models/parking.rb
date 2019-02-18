class Parking < ApplicationRecord
  SIZE_CAR = ["Small Car", "Medium Car", "Big Car", "Truck"]
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings
  validates :address, presence: true
  validates :picture, presence: true
  validates :confirmation, presence: true
  validates :covered, presence: true
  validates :security, presence: true
  validates :camera, presence: true
  validates :size, inclusion: { in: SIZE_CAR }
  validates :gated, presence: true
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
end
