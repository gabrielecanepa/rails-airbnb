puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
Flat.create!([
  {
    name:               Faker::Company.catch_phrase,
    address:            "#{Faker::Address.street_address}, #{Faker::Address.street_address}",
    description:        "#{Faker::Company.catch_phrase}, #{Faker::Company.bs}.",
    price_per_night:    rand(100) + 20,
    number_of_guests:   rand(8) + 1,
    image:              'https://images.pexels.com/photos/378570/pexels-photo-378570.jpeg',
    avatar:             'https://relayfm.s3.amazonaws.com/uploads/user/avatar/68/user_avatar_Davidsmith_artwork.png',
    publication_date: (Time.now - rand(15552000)).strftime('%d %B %Y')
  }
])
Flat.create!([
  {
    name:               Faker::Company.catch_phrase,
    address:            "#{Faker::Address.street_address}, #{Faker::Address.street_address}",
    description:        "#{Faker::Company.catch_phrase}, #{Faker::Company.bs}.",
    price_per_night:    rand(100) + 20,
    number_of_guests:   rand(8) + 1,
    image:              'https://images.pexels.com/photos/315191/pexels-photo-315191.jpeg',
    avatar:             'https://www.microsoft.com/en-us/research/wp-content/uploads/2017/11/avatar_user_36692_1511968805.jpg',
    publication_date: (Time.now - rand(15552000)).strftime('%d %B %Y')
  }
])
Flat.create!([
  {
    name:               Faker::Company.catch_phrase,
    address:            "#{Faker::Address.street_address}, #{Faker::Address.street_address}",
    description:        "#{Faker::Company.catch_phrase}, #{Faker::Company.bs}.",
    price_per_night:    rand(100) + 20,
    number_of_guests:   rand(8) + 1,
    image:              'https://images.pexels.com/photos/548084/pexels-photo-548084.jpeg',
    avatar:             'https://www.pixelperfect.co.za/wp-content/uploads/2014/08/avatar-4.jpg',
    publication_date: (Time.now - rand(15552000)).strftime('%d %B %Y')
  }
])

puts 'Finished!'
