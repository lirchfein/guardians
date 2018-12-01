# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Guard.destroy_all
User.destroy_all

puts "creating users..."
u1 = User.create!(first_name: 'Paul', last_name: 'Pope', email: 'pa@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Peter', last_name: 'Fox', email: 'pe@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Wiebke', last_name: 'Rost', email: 'wi@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Marton', last_name: 'Barcza', email: 'ma@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724075/marton-profile.jpg')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'so@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Peter', last_name: 'Parker', email: 'peter@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542982486/peter_parker.jpg' )
User.create!(first_name: 'Clark', last_name: 'Kent', email: 'clark@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Bla', last_name: 'Bla', email: 'bla@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'si@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'sp@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spa@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spo@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spi@lewagon.com', password: 'tralalala', avatar: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542724324/Sophie-Marceau_width1024.jpg' )



puts "creating guards..."
# guard = Guard.create!(user_id: 1, name: 'Legolas', specialty: 'nice hair', available: false, location: 'Treptower Park', rate: 5000, profile_pic: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542721286/legolas_profile.jpg', cover_pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542720254/Legolas.jpg')

b = Guard.new(user_id: (u1.id + 1), name: 'Gimli', specialty: 'pocket-sized', location: 'Moritzplatz, Berlin', rate: 4000, description: 'Gimli is really small' )
b.remote_profile_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715218/Guardians/gimli.jpg';
b.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Guardians/Gimli_cover.jpg';
b.save
c = Guard.new(user_id: (u1.id + 2), name: 'Bronn', specialty: 'drunkard', location: 'Berliner Dom', rate: 500, description: 'Bronn is a top bloke')
c.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/Guardians/bronn.jpg';
c.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722274/Guardians/Bronn-game-of-thrones-22077692-1024-576.png';
c.save!
d = Guard.new(user_id: (u1.id + 3), name: 'Thor', specialty: 'strong', location: 'Kottbusser Tor', rate: 70000, description: 'Strong dude with a mighty hammer')
d.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542721686/Guardians/thor-profile.jpg';
d.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715221/Guardians/thor.jpg';
d.save!
e = Guard.new(user_id: (u1.id + 4), name: 'Batman', specialty: 'strong', location: 'Warschauer Straße, Berlin', rate: 3000, description: 'Way too fond of bats, apparently')
e.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/Guardians/batman.jpg';
e.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722266/Guardians/Batman_cover.png';
e.save!
f = Guard.new(user_id: (u1.id + 5), name: 'Groot', specialty: 'strong', location: 'Monbijou Park, Oranienburger Straße, Berlin', rate: 200, description: 'A bit of a Tree')
f.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542715218/Guardians/groot.jpg'
f.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Guardians/Groot_cover.jpg';
f.save!
# g = Guard.new(user_id: (u1.id + 6), name: 'Rick Sanchez', specialty: 'drunkard', location: 'Flakturm III Humboldthain, Hochstraße, Berlin', rate: 700000, description: 'Really smart, but an alcoholic')
# g.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542715220/rick_sanchez.jpg', 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/rick_cover.jpg' ]
# g.save!
# h = Guard.new(user_id: (u1.id + 7), name: 'E.T.', specialty: 'flies', location: 'Herrmannplatz, Berlin', rate: 10, description: 'An alien. Kind cute tho')
# h.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542715217/E-T.jpg', 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/et_cover.png' ]
# h.save!
# i = Guard.new(user_id: (u1.id + 8), name: 'Arya Stark', specialty: 'faceless', location: 'Berlin Hauptbahnhof', rate: 4000, description: 'She has a list. You hope you are not on it.')
# i.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542720254/arya-stark.jpg', 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722266/arya_cover.jpg' ]
# i.save!
# j = Guard.new(user_id: (u1.id + 9), name: 'Han Solo', specialty: 'flies', location: 'Berlin Tegel Airport', rate: 5000, description: 'She has a list. You hope you are not on it.')
# j.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542715219/han_solo.jpg', 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722266/arya_cover.jpg' ]
# j.save!




# Guard.create!(picture: '', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/han_solo_cover.jpg' )
# Guard.create!(name: 'Bilbo Baggins', specialty: 'pocket-sized', location: 'Tiergarten, Berlin', rate: 700, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542722023/bilbo_profile.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/bilbo_baggins.jpg')
# Guard.create!(name: 'A Magic Toad', specialty: 'pocket-sized', location: 'Zoologischer Garten, Berlin', rate: 10, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542715221/toad.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722278/toad_cover.jpg' )
# Guard.create!(name: 'Obi-Wan Kenobi', specialty: 'flies', location: 'Tempelhofer Feld, Berlin', rate: 6000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542715220/obi-wan_kenobi.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/obi_wan.jpg')
# Guard.create!(name: 'Elsa', specialty: 'nice hair', location: 'Volkspark Friedrichshain', rate: 3000, picture: 'https://res.cloudinary.com/dfcud6por/image/upload/c_fill,h_700,w_700/v1542715217/elsa.jpg', cover: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/elsa_cover.png' )

puts "creating bookings..."
#Booking.create!(user_id: user.id, guard_id: guard.id)
puts "Seed complete"
