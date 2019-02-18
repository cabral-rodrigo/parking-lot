class Review < ApplicationRecord
  RATING = [1, 2, 3, 4, 5]
  belongs_to :booking
  validates :rating_user, inclusion: { in: RATING }
  validates :rating_user, numericality: { only_integer: true }
  validates :date, presence: true
end
