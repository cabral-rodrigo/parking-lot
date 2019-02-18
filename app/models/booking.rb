class Booking < ApplicationRecord
  belongs_to :parking
  belongs_to :user
  has_many :reviews
  validates :availability, presence: true
  validates :status, presence: true
  validates :date, presence: true
end
