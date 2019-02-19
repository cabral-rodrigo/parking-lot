class Booking < ApplicationRecord
  belongs_to :parking
  belongs_to :user
  has_many :reviews
  validates :status, presence: true
  validates :date, presence: true
end
