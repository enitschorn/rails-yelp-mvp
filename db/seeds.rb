# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = %w[chinese italian japanese french belgian]

puts 'Cleaning up database...'
Restaurant.destroy_all

puts 'Creating 5 restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0948576992',
    category:     category.sample
  },

  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '7356982438',
    category:     category.sample
  },

  {
    name:         'Sushi Samba',
    address:      '40 Swanston St, 3000 Melbourne CBD',
    phone_number: '1978598349',
    category:     category.sample
  },

  {
    name:         'Carretão',
    address:      '34 Beach St, 56739 São Paolo',
    phone_number: '9823457380',
    category:     category.sample
  },

  {
    name:         'Lala Land',
    address:      '50 Church St, 3546 Richmond',
    phone_number: '87348230210',
    category:     category.sample
  }

]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
