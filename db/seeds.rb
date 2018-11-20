# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all!
Guard.destroy_all!

puts "creating users..."


user = User.create!(first_name: 'Marton', last_name: 'barc', email: 'ma.ba@lewagon.com', password: 'tralalala')

puts "creating guards..."


Guard.create!(name: 'Legolas', specialty: 'nice hair', location: 'Elwynn Forest', rate: 5000, picture: 'https://p8.storage.canalblog.com/81/50/1203904/92832500.jpeg', user_id: user.id)

puts "Seed complete"
