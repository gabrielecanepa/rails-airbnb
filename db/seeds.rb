puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
3.times do
  Flat.create!([
    {
      name:               Faker::Company.catch_phrase,
      address:            "#{Faker::Address.street_address}, #{Faker::Address.street_address}",
      description:        "#{Faker::Company.catch_phrase}, #{Faker::Company.bs}.",
      price_per_night:    rand(100) + 20,
      number_of_guests:   rand(8) + 1,
      image:              ['https://images.pexels.com/photos/378570/pexels-photo-378570.jpeg', 'https://images.pexels.com/photos/315191/pexels-photo-315191.jpeg', 'https://images.pexels.com/photos/548084/pexels-photo-548084.jpeg'].sample
    }
  ])
end

puts 'Finished!'
