# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do |restaurant|
  Restaurant.create(
    name: Faker::Books::Dune.planet,
    address: Faker::Movies::LordOfTheRings.location,
    category: CATEGORY.sample
  )
end
