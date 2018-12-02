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
u1 = User.create!(first_name: 'Paul', last_name: 'Pope', email: 'pa@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Peter', last_name: 'Fox', email: 'pe@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Wiebke', last_name: 'Rost', email: 'wi@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Marton', last_name: 'Barcza', email: 'ma@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'so@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Peter', last_name: 'Parker', email: 'peter@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Clark', last_name: 'Kent', email: 'clark@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Bla', last_name: 'Bla', email: 'bla@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'si@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'sp@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spa@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spo@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spi@lewagon.com', password: 'tralalala')

User.create!(first_name: 'Peter', last_name: 'Fox', email: 'per@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Wiebke', last_name: 'Rost', email: 'wir@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Marton', last_name: 'Barcza', email: 'mar@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'sor@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Peter', last_name: 'Parker', email: 'peterr@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Clark', last_name: 'Kent', email: 'clarkr@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Bla', last_name: 'Bla', email: 'blar@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'sir@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spr@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spar@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spor@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spir@lewagon.com', password: 'tralalala')
User.create!(first_name: 'Sophie', last_name: 'Rost', email: 'spirr@lewagon.com', password: 'tralalala')



puts "creating guards..."
guard = Guard.create!(user_id: 1, name: 'Legolas', specialty: 'nice hair', available: false, location: 'Treptower Park', rate: 5000, remote_profile_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542721286/Guardians/legolas_profile.jpg', remote_cover_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542720254/Guardians/Legolas.jpg')

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
e = Guard.new(user_id: (u1.id + 4), name: 'Batman', available: false, specialty: 'strong', location: 'Warschauer Straße, Berlin', rate: 3000, description: 'Way too fond of bats, apparently')
e.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/Guardians/batman.jpg';
e.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722266/Guardians/Batman_cover.png';
e.save!
f = Guard.new(user_id: (u1.id + 5), name: 'Groot', specialty: 'strong', location: 'Monbijou Park, Oranienburger Straße, Berlin', rate: 200, description: 'A bit of a Tree')
f.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542715218/Guardians/groot.jpg'
f.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Guardians/Groot_cover.jpg';
f.save!
g = Guard.new(user_id: (u1.id + 6), name: 'Rick Sanchez', specialty: 'drunkard', location: 'Flakturm III Humboldthain, Hochstraße, Berlin', rate: 700000, description: 'Really smart, but an alcoholic')
g.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542715220/Guardians/rick_sanchez.jpg'
g.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Guardians/rick_cover.jpg'
g.save!
h = Guard.new(user_id: (u1.id + 7), name: 'E.T.', specialty: 'flies', location: 'Herrmannplatz, Berlin', rate: 10, description: 'An alien. Kind cute tho')
h.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/Guardians/E-T.jpg'
h.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Guardians/et_cover.png'
h.save!
i = Guard.new(user_id: (u1.id + 8), name: 'Arya Stark', available: false, specialty: 'faceless', location: 'Berlin Hauptbahnhof', rate: 4000, description: 'She has a list. You hope you are not on it.')
i.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542720254/Guardians/arya-stark.jpg'
i.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722266/Guardians/arya_cover.jpg'
i.save!
j = Guard.new(user_id: (u1.id + 9), name: 'Han Solo', specialty: 'flies', location: 'Berlin Tegel Airport', rate: 5000, description: 'My best friend is chewbacca.')
j.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1542715219/Guardians/han_solo.jpg'
j.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Guardians/han_solo_cover.jpg'
j.save!
k = Guard.new(user_id: (u1.id + 10), name: 'Superman', specialty: 'flies', location: 'Sao Paulo', rate: 5000, description: 'You are much stronger than you think you are. Trust me.')
k.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543739058/Guardians/superman-profile.jpg'
k.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739059/Guardians/super-man-cover.jpg'
k.save!
l = Guard.new(user_id: (u1.id + 10), name: 'Spiderman', specialty: 'makes webs', location: 'Teneriffa', rate: 3000, description: 'With great power comes great responsibility.')
l.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543669368/bmqat0gai8asabtqw08n.jpg'
l.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543669367/zjm6qirixjforvwfas9e.jpg'
l.save!
m = Guard.new(user_id: (u1.id + 11), name: 'Wolverine', available: false, specialty: 'regenerative', location: 'Madrid', rate: 1000, description: 'The pain lets you know you are still alive.')
m.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543739058/Guardians/wolverine-profile.jpg'
m.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739059/Guardians/wolverine-cover.jpg'
m.save!
n = Guard.new(user_id: (u1.id + 12), name: 'Mystique', specialty: 'shapeshifter', location: 'New York', rate: 400, description: 'You want society to accept you, but you cannot even accept yourself.')
n.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543740912/Guardians/mystique-x-men1-profile.jpg'
n.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739058/Guardians/mystique-cover.jpg'
n.save!
o = Guard.new(user_id: (u1.id + 13), name: 'Black Widow', specialty: 'spying', location: 'Los Angeles', rate: 1600, description: 'Trusted by some, feared by most.')
o.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543740912/Guardians/black-widow-profiel.jpg'
o.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739058/Guardians/black_widow-cover.jpg'
o.save!
q = Guard.new(user_id: (u1.id + 14), name: 'Jean Grey', specialty: 'telepathy', location: 'Mallorca', rate: 200, description: 'I can not always controll my powers...')
q.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543739061/Guardians/jeangreyturner-profile.jpg'
q.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739060/Guardians/jean-grey-cover.jpg'
q.save!
r = Guard.new(user_id: (u1.id + 15), name: 'Red Mist', specialty: 'being evil', location: 'Mexico City', rate: 1900, description: 'I like red leather.')
r.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543739061/Guardians/red-mist-profile.jpg'
r.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739062/Guardians/red-mist-cover.jpg'
r.save!
s = Guard.new(user_id: (u1.id + 16), name: 'Hit Girl', specialty: 'martial arts', location: 'Sidney', rate: 15000, description: 'You don\'t have to be a badass to be a superhero, you just gotta be brave.')
s.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543739063/Guardians/hit-girl-profile.jpg'
s.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739064/Guardians/hitgirl-profile.jpg'
s.save!
t = Guard.new(user_id: (u1.id + 17), name: 'Black Panther', specialty: 'technology', location: 'Havanna', rate: 22000, description: 'I have the most advanced technology on earth.')
t.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543739065/Guardians/black-panther-profile.png'
t.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739064/Guardians/the-black-panther-film-marvel-cover.jpg'
t.save!
u = Guard.new(user_id: (u1.id + 18), name: 'Katness Everdeen', available: false, specialty: 'archery', location: 'Costa Rica', rate: 30000, description: 'I play hunger games')
u.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543740912/Guardians/Katniss-profile.jpg'
u.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739066/Guardians/katnis_everdeen-cover.jpg'
u.save!
v = Guard.new(user_id: (u1.id + 19), name: 'Aquaman', specialty: 'water', location: 'Rom', rate: 5000, description: 'I am the king of Atlantis')
v.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543740912/Guardians/aquaman-profile.jpg'
v.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739066/Guardians/Aquaman-Movie-Seven-Seas-Tribes-1cover.jpg'
v.save!
w = Guard.new(user_id: (u1.id + 20), name: 'Harley Quinn', specialty: 'baseball bats', location: 'Sacre Coeur', rate: 10, description: 'Love makes us do crazy things.')
w.remote_profile_pic_url ='https://res.cloudinary.com/dfcud6por/image/upload/v1543740912/Guardians/harley-quinn-profile.jpg'
w.remote_cover_pic_url = 'https://res.cloudinary.com/dfcud6por/image/upload/v1543739067/Guardians/suicide-squad-harley-quinn-cover.jpg'
w.save!




#Guard.create!(remote_profile_pic_url: '', remote_cover_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/han_solo_cover.jpg' )
Guard.create!(user_id: (u1.id + 21), name: 'Bilbo Baggins', specialty: 'pocket-sized', location: 'Tiergarten, Berlin', rate: 700, remote_profile_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/Guardians/bilbo_baggins.jpg', remote_cover_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/Guardians/bilbo_baggins.jpg')
Guard.create!(user_id: (u1.id + 22), name: 'A Magic Toad', specialty: 'pocket-sized', location: 'Zoologischer Garten, Berlin', rate: 10, remote_profile_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715221/Guardians/toad.jpg', remote_cover_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722278/Guardians/toad_cover.jpg' )
Guard.create!(user_id: (u1.id + 23), name: 'Obi-Wan Kenobi', available: false, specialty: 'flies', location: 'Tempelhofer Feld, Berlin', rate: 6000, remote_profile_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715220/Guardians/obi-wan_kenobi.jpg', remote_cover_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Guardians/obi_wan.jpg')
Guard.create!(user_id: (u1.id + 24), name: 'Elsa', specialty: 'nice hair', location: 'Volkspark Friedrichshain', rate: 3000, remote_profile_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542715217/Guardians/elsa.jpg', remote_cover_pic_url: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542722276/Guardians/elsa_cover.png' )

puts "creating bookings..."
#Booking.create!(user_id: user.id, guard_id: guard.id)
puts "Seed complete"
