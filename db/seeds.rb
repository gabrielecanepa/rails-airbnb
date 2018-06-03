puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
10.times do
  Flat.create!([
    {
      name:               Faker::Company.catch_phrase,
      address:            "#{Faker::Address.street_address}, #{Faker::Address.street_address}",
      description:        "#{Faker::Company.catch_phrase}, #{Faker::Company.bs}.",
      price_per_night:    rand(100) + 20,
      number_of_guests:   rand(8) + 1
    }
  ])
end

puts 'Finished!'
