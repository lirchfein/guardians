# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
User.destroy_all
Guard.destroy_all

puts "creating users..."
user = User.create!(first_name: 'Marton', last_name: 'Barcza', email: 'ma.ba@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724075/marton-profile.jpg')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'so.ro@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )


puts "creating guards..."
guard = Guard.create!(name: 'Legolas', specialty: 'nice hair', location: 'Mirkwood Forest', rate: 5000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542721286/legolas_profile.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542720254/Legolas.jpg')
Guard.create!(name: 'Darth Vader', specialty: 'faceless', location: 'Death Star', rate: 100000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715217/Darth_Vader.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Star-Wars-Darth-Vader-Wallpaper.jpg' )
Guard.create!(name: 'Gimli', specialty: 'pocket-sized', location: 'Iron Mountains', rate: 4000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715218/gimli.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Gimli_cover.jpg' )
Guard.create!(name: 'Bronn', specialty: 'drunkard', location: 'Kings Landing', rate: 500, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715217/bronn.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722274/Bronn-game-of-thrones-22077692-1024-576.png' )
Guard.create!(name: 'Thor', specialty: 'strong', location: 'Space', rate: 10000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542721686/thor-profile.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715221/thor.jpg')
Guard.create!(name: 'Batman', specialty: 'strong', location: 'Gotham City', rate: 3000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715217/batman.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722266/Batman_cover.png' )
Guard.create!(name: 'Groot', specialty: 'strong', location: 'Space', rate: 200, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715218/groot.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Groot_cover.jpg' )
Guard.create!(name: 'Rick Sanchez', specialty: 'drunkard', location: 'Another dimension', rate: 100000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715220/rick_sanchez.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/rick_cover.jpg' )
Guard.create!(name: 'E.T.', specialty: 'flies', location: 'Somewhere Spooky', rate: 10, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715217/E-T.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/et_cover.png' )
Guard.create!(name: 'Arya Stark', specialty: 'faceless', location: 'Winterfell', rate: 4000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542720254/arya-stark.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722266/arya_cover.jpg' )
Guard.create!(name: 'Han Solo', specialty: 'flies', location: 'Space', rate: 5000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715219/han_solo.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/han_solo_cover.jpg' )
Guard.create!(name: 'Bilbo Baggins', specialty: 'pocket-sized', location: 'The Shire', rate: 700, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542722023/bilbo_profile.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/bilbo_baggins.jpg')
Guard.create!(name: 'A Magic Toad', specialty: 'pocket-sized', location: 'Swamp Land', rate: 10, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715221/toad.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722278/toad_cover.jpg' )
Guard.create!(name: 'Obi-Wan Kenobi', specialty: 'flies', location: 'Space', rate: 6000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715220/obi-wan_kenobi.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/obi_wan.jpg')
Guard.create!(name: 'Elsa', specialty: 'nice hair', location: 'Frozen Land', rate: 3000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_100,w_100/v1542715217/elsa.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/elsa_cover.png' )


puts "creating bookings..."
Booking.create!(user_id: user.id, guard_id: guard.id)
puts "Seed complete"
