# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Killing the children before the parents'

Review.destroy_all
Booking.destroy_all
Parking.destroy_all
User.destroy_all

puts "starting seeds"

#-----------------------------------------------------------

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


#-----------------------------------------------------------
user1 = User.first
user2 = User.last

puts 'Creating Parkings...'


parking_attributes = [
  {
    address:      'Thames 2334, Buenos Aires',
    confirmation: true,
    covered:      true,
    security:     true,
    camera:       true,
    size:         'Small Car',
    gated:        true,
    price:        33,
    user:         user1,
    name:         "Cochera de Meli 1"
  },
  {
    address:      'Thames 2338, Buenos Aires',
    confirmation: true,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Medium Car',
    gated:        true,
    price:        60,
    user:         user1,
    name:         "Cochera de Meli 2"
  },
    {
    address:      'Jean Jaures 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Small Car',
    gated:        true,
    price:        10,
    user:         user1,
    name:         "Cochera de Rodrigo"
  },
    {
    address:      'Malabia 2240, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Medium Car',
    gated:        true,
    price:        45,
    user:         user1,
    name:         "Cochera de Bill"
  },
    {
    address:      'Gurruchaga 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        20,
    user:         user1,
    name:         "Cochera de Nico"
  },
    {
    address:      'Charcas 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Small Car',
    gated:        true,
    price:        48,
    user:         user1,
    name:         "Cochera de Miguel"
  },
    {
    address:      'Migueletes 2213, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Small Car',
    gated:        true,
    price:        23,
    user:         user1,
    name:         "Cochera de Sam"
  },
      {
    address:      'Tucumán 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        78,
    user:         user1,
    name:         "Cochera de Claire"
  },
    {
    address:      'Murillo 666, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        52,
    user:         user1,
    name:         "Cochera de Alfonso"
  },
    {
    address:      'Terrero 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        56,
    user:         user1,
    name:         "Cochera de Matías"
  },
      {
    address:      'Fitz Roy 2165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        58,
    user:         user1,
    name:         "Cochera de Sebastían"
  },
    {
    address:      'Mansilla 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        80,
    user:         user1,
    name:         "Cochera de Sheila"
  },
      {
    address:      'Paraguay 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Medium Car',
    gated:        true,
    price:        67,
    user:         user1,
    name:         "Cochera de Eloy"
  },
      {
    address:      'San Martin de Tours 2908, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Medium Car',
    gated:        true,
    price:        70,
    user:         user1,
    name:         "Cochera de Victoria"
  },
      {
    address:      'Yatay 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Small Car',
    gated:        true,
    price:        50,
    user:         user1,
    name:         "Cochera de Elizabeth"
  },
      {
    address:      'Oro 2165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        63,
    user:         user1,
    name:         "Cochera de Alan"
  },
    {
    address:      'Republica Arabe Siria 3065, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        95,
    user:         user1,
    name:         "Cochera de Patricio"
  },
      {
    address:      'Bulnes 2707, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Small Car',
    gated:        true,
    price:        60,
    user:         user1,
    name:         "Cochera de Lucía"
  },
      {
    address:      'Jeronimo Salguero 1165, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Medium Car',
    gated:        true,
    price:        54,
    user:         user1,
    name:         "Cochera de Diego"
  },
      {
    address:      'Zelaya 3053, Buenos Aires',
    confirmation: false,
    covered:      true,
    security:     true,
    camera:       false,
    size:         'Large Car',
    gated:        true,
    price:        50,
    user:         user1,
    name:         "Cochera de Rodrigo"
  },
]

COCHERAS = ["https://www.dailyherald.com/storyimage/DA/20121202/business/712029983/AR/0/AR-712029983.jpg&updated=201211281541&MaxW=600&maxH=600&noborder",
            "http://swamplot.com/wp-content/uploads/2010/11/eisele-house.jpg",
            "https://i.ytimg.com/vi/1JF2UuSsbB8/hqdefault.jpg",
            "https://images.unsplash.com/photo-1486006920555-c77dcf18193c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1459&q=80",
            "https://images.unsplash.com/photo-1495435229349-e86db7bfa013?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=929&q=80https://images.unsplash.com/photo-1495435229349-e86db7bfa013?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=929&q=80",
            "https://images.unsplash.com/photo-1508465487720-54cef28cc719?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80https://images.unsplash.com/photo-1508465487720-54cef28cc719?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80",
            "https://images.unsplash.com/photo-1470880587080-599f3e4f0913?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80https://images.unsplash.com/photo-1470880587080-599f3e4f0913?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
            "https://images.unsplash.com/photo-1470880587080-599f3e4f0913?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80https://images.unsplash.com/photo-1470880587080-599f3e4f0913?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
            "https://images.unsplash.com/photo-1505545121909-2d48e22dede6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80https://images.unsplash.com/photo-1505545121909-2d48e22dede6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
            "https://images.unsplash.com/photo-1512464099600-d83e8069aa75?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80https://images.unsplash.com/photo-1512464099600-d83e8069aa75?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
            "https://images.unsplash.com/photo-1530268578403-df6e89da0d30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80https://images.unsplash.com/photo-1530268578403-df6e89da0d30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
            "https://images.unsplash.com/photo-1495434951808-370bf1154920?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=688&q=80https://images.unsplash.com/photo-1495434951808-370bf1154920?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=688&q=80",
            "https://images.unsplash.com/photo-1474408886716-087263db7da1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=753&q=80https://images.unsplash.com/photo-1474408886716-087263db7da1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=753&q=80",
            "https://images.unsplash.com/photo-1463541555616-ad5d33ef6339?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80https://images.unsplash.com/photo-1463541555616-ad5d33ef6339?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
            "https://images.unsplash.com/photo-1463541555616-ad5d33ef6339?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80https://images.unsplash.com/photo-1463541555616-ad5d33ef6339?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
            "https://images.unsplash.com/photo-1489847737011-2f9e5f5aa2e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=671&q=80https://images.unsplash.com/photo-1489847737011-2f9e5f5aa2e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=671&q=80",
            "https://images.unsplash.com/photo-1445548671936-e1ff8a6a6b20?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
            "https://images.unsplash.com/photo-1523918646955-42c104ef7349?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80https://images.unsplash.com/photo-1523918646955-42c104ef7349?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80]",
            "https://images.unsplash.com/photo-1532439771208-8fda693b96b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80https://images.unsplash.com/photo-1532439771208-8fda693b96b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
            "https://images.unsplash.com/photo-1548343361-02248be15911?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE2ODQ0fQ&auto=format&fit=crop&w=1500&q=80https://images.unsplash.com/photo-1548343361-02248be15911?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE2ODQ0fQ&auto=format&fit=crop&w=1500&q=80"
          ]

parking_attributes.each_with_index do |parking, index|
  p = Parking.new(parking)
  p.remote_picture_url = COCHERAS[index]
  p.save
end

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
