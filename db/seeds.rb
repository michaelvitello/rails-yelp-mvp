# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '+44 7000 000 001',
    category:     'japanese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '+44 7000 000 021',
    category:     'italian'
  },
  {
    name:         'Franco Manca',
    address:      '35 Wardour Street, London W1 8HT',
    phone_number: '+44 7000 000 321',
    category:     'italian'
  },
  {
    name:         'Roka',
    address:      '130 Charlotte St, London W2 9YQ',
    phone_number: '+44 7000 033 221',
    category:     'japanese'
  },
  {
    name:         'Le Coq',
    address:      '178 Curtain Rd, London SE17 3BU',
    phone_number: '+44 7000 786 021',
    category:     'french'
  }
]

restaurants_attributes.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts 'Finished!'
