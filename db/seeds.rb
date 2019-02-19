# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting seeds"

#-----------------------------------------------------------

User.destroy_all

puts 'Creating Users...'
user_attributes = [
  {
    email:         'owner_parking@lot.com',
    password:      '12345678',
  },
  {
    email:         'user_parking@lot.com',
    password:      '12345678',
  },
]
User.create!(user_attributes)

Parking.destroy_all

#-----------------------------------------------------------
user1 = User.first
user2 = User.last

puts 'Creating Parkings...'
parking_attributes = [
  {
    address:      'jean jaures 1165, cochera 15',
    picture:      'parking_lot1.jpg',
    confirmation: true,
    covered:      true,
    security:     true,
    camera:       true,
    size:         'Small Car',
    gated:        true,
    price:        50,
    user:         user1
  },
  {
    address:      'avenida cordoba 1165, cochera 15',
    picture:      'parking_lot2.jpg',
    confirmation: true,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Medium Car',
    gated:        true,
    price:        50,
    user:         user1
  },
]

Parking.create!(parking_attributes)

#-----------------------------------------------------------

parking1 = Parking.first
parking2 = Parking.last

puts 'Creating bookings...'
booking_attributes = [
  {
    status:    'approbed',
    date:      '19/02/19',
    user:       user2,
    parking:    parking1,
  },
  {
    status:    'pending',
    date:      '19/02/19',
    user:       user2,
    parking:    parking2,
  },
]
Booking.create!(booking_attributes)

#-----------------------------------------------------------

booking1 = Booking.first
booking2 = Booking.last

puts 'Creating reviews...'
reviews_attributes = [
  {
    picture:      'review1.jpg',
    rating_user:  5,
    date:         '20/02/19',
    booking:      booking1,
  },
]
Review.create!(reviews_attributes)



puts "finishing seeds"
