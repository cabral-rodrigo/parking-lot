class Parking < ApplicationRecord
  include PgSearch
  SIZE_CAR = ["Small Car", "Medium Car", "Big Car", "Truck"]
  mount_uploader :picture, PictureUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings
  validates :address, presence: true
  validates :picture, presence: true
  validates :confirmation, inclusion: { in: [true, false] }
  validates :covered, inclusion: { in: [true, false] }
  validates :security, inclusion: { in: [true, false] }
  validates :camera, inclusion: { in: [true, false] }
  validates :size, inclusion: { in: SIZE_CAR }
  validates :gated, inclusion: { in: [true, false] }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :name, presence: true, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_by_name_and_address,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def reviews
    reviews = []
    self.bookings.map do |booking|
      booking.reviews.each do |review|
        reviews << review
      end
    end
    reviews
  end

end
