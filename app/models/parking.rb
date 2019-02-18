class Parking < ApplicationRecord
  SIZE_CAR = ["Small Car", "Medium Car", "Big Car", "Truck"]
  belongs_to :user
  validates :address, presence: true
  validates :picture, presence: true
  validates :confirmation, presence: true
  validates :covered, presence: true, default: false
  validates :security, presence: true, default: false
  validates :camera, presence: true, default: false
  validates :size, inclusion: { in: SIZE_CAR }
  validates :gated, presence: true, default: false
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
end
