class Parking < ApplicationRecord
  SIZE_CAR = ["Small Car", "Medium Car", "Big Car", "Truck"]
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings
  validates :address, presence: true
  # validates :picture, presence: true
  validates :confirmation, inclusion: { in: [true, false] }
  validates :covered, inclusion: { in: [true, false] }
  validates :security, inclusion: { in: [true, false] }
  validates :camera, inclusion: { in: [true, false] }
  validates :size, inclusion: { in: SIZE_CAR }
  validates :gated, inclusion: { in: [true, false] }
  validates :price, presence: true, numericality: { only_integer: true }
end
