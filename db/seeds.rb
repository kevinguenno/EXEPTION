# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Castle.destroy_all
User.destroy_all

owner1 = User.create!({
  email: "charles.richelieu@icloud.com",
  password: "1234567890",
  first_name: "Charles",
  last_name: "Richelieu",
  description: "Hello, I'm Charles Richelieu
  I am passionate about old architecture and would be delighted to show you my home, which is rich in history.
  You will have a pleasant stay with your family and friends. The estate can also be booked for ceremonies",
  photo: "photo"
})
castle1 = Castle.new({
  title: "Incredible Castle",
  description: "Incredible French Castle",
  location: "Tours",
  price: 1435,
  capacity: 25,
  photo: "photo",
  category: "Countryside"
})
castle1.user = owner1
castle1.save!

#############

owner2 = User.create!({
  email: "madeleine.sterma@gmail.com",
  password: "1234567890",
  first_name: "Madeleine",
  last_name: "Sterma",
  description: "Hello, I'm Madeleine Sterma
  I rent out several of my homes to offer you unique moments with family or friends,
  or to make your birthdays, weddings and all your ceremonies unforgettable.",
  photo: "photo"
})
castle2 = Castle.new({
  title: "Small country castle",
  description: "Small castle in the Bordeaux countryside with swimming pool and breathtaking views of the vineyards",
  location: "Bordeaux",
  price: 875,
  capacity: 12,
  photo: "photo",
  category: "Countryside"
})
castle2.user = owner2
castle2.save!

#############

owner3 = User.create!({
  email: "georges.rabiller@outlook.com",
  password: "1234567890",
  first_name: "Georges",
  last_name: "Rabiller",
  description: "Hello, I'm Georges Rabiller
  Come and discover my castles in the south of France to spend your holidays or to organise your events.",
  photo: "photo"
})
castle3 = Castle.new({
  title: "The sunny castle",
  description: "French Riviera castle to offer you warmth and rest not far from St-Tropez (20min)
  The castle has a swimming pool and a large domain where young and old can let off steam and get some fresh air. ",
  location: "St-Tropez",
  price: 2220,
  capacity: 20,
  photo: "photo",
  category: "Sea and beach"
})
castle3.user = owner3
castle3.save!

#############
owner4 = User.create!({
  email: "grace.bridton@gmail.com",
  password: "1234567890",
  first_name: "Grace",
  last_name: "Bridton",
  description: "Hello, I'm Grace Bridton
  Would you like to discover the Basque coast through an unusual rental experience? Come and stay in one of my homes on the West Coast.",
  photo: "photo"
})
castle4 = Castle.new({
  title: "The Basque castle",
  description: "Enjoy the adventure of the Basque coast by staying in a castle full of history and life.
  Enjoy the adventure of the Basque coast by staying in a castle full of history and life. No need to choose between land and sea, the castle has a large estate in the Basque hinterland while being 20 minutes from the nearest beach.",
  location: "St-Jean-de-Luz",
  price: 1150,
  capacity: 15,
  photo: "photo",
  category: "Sea and beach"
})
castle4.user = owner4
castle4.save!

#############
owner5 = User.create!({
  email: "pierre.legrand@icloud.com",
  password: "1234567890",
  first_name: "Pierre",
  last_name: "Legrand",
  description: "Hello, I'm Pierre Legrand
  I would be delighted to welcome you to one of my castles in Brittany.
  Let yourself be guided by the sea spray and the smell of pancakes, and treat yourself to a dream holiday.",
  photo: "photo"
})
castle5 = Castle.new({
  title: "The Breton Castle",
  description: "Large estate, heated and covered swimming pool and barbecue are at your disposal.
  The castle has access to a private beach.",
  location: "Belle-île-en-Mer",
  price: 925,
  capacity: 10,
  photo: "photo",
  category: "Sea and beach"
})
castle5.user = owner5
castle5.save!

#############
owner6 = User.create!({
  email: "marie.laval@outlook.com",
  password: "1234567890",
  first_name: "Marie",
  last_name: "Laval",
  description: "Hello, I'm Marie Laval
  Looking for a relaxing holiday away from the hustle and bustle of the big cities?
  My castles in the centre of France will be perfect for your holidays with family or friends.
  The castles are suitable for everyone, young and old, grandma and grandpa. ",
  photo: "photo"
})
castle6 = Castle.new({
  title: "Auvergne Castle",
  description: "The castle has a heated and covered swimming pool.
  There is a billiard table and table football in the games room.
  The castle is located not far from the Vulcania theme park.",
  location: "Puy-de-dôme",
  price: 915,
  capacity: 12,
  photo: "photo",
  category: "Countryside"
})
castle6.user = owner6
castle6.save!

##################################
renter1 = User.create!({
  email: "laurent.bourgeois@gmail.com",
  password: "1234567890",
  first_name: "Laurent",
  last_name: "Bourgeois",
  description: "Hello, I'm Laurent Bourgeois.
  I enjoy discovering places full of history and sharing moments with my family and friends.",
  photo: "photo"
})
booking1 = Booking.new({
  check_in: Date.new(2023, 03, 01),
  check_out: Date.new(2023, 03, 15),
  total_price: 6525,
  validates: "Pending"
})
booking1.user = renter1
booking1.castle = castle1
booking1.save!
#############

renter2 = User.create!({
  email: "brice.maunier@gmail.com",
  password: "1234567890",
  first_name: "Brice",
  last_name: "Maunier",
  description: "Hello, I'm Brice Maunier.
  I like sports and beautiful places.",
  photo: "photo"
  })
booking2 = Booking.new({
  check_in: Date.new(2023, 06, 02),
  check_out: Date.new(2023, 06, 15),
  total_price: 10400,
  validates: "Pending"
})
booking2.user = renter2
booking2.castle = castle2
booking2.save!

#############
renter3 = User.create!({
  email: "claire.lemaire@gmail.com",
  password: "1234567890",
  first_name: "Claire",
  last_name: "Lemaire",
  description: "Hello, I'm Claire Lemaire.
  I want to discover the most beautiful buildings in France to spend my holidays with my family.",
  photo: "photo"
})
booking3 = Booking.new({
  check_in: Date.new(2023, 08, 01),
  check_out: Date.new(2023, 08, 07),
  total_price: 4675,
  validates: "Pending"
})
booking3.user = renter3
booking3.castle = castle3
booking3.save!

#############

renter4 = User.create!({
  email: "laetitia.guerin@gmail.com",
  password: "1234567890",
  first_name: "Laetitia",
  last_name: "Guerin",
  description: "Hello, I'm Laetitia Guerin.
  I am a wedding planner and I am looking for exceptional places for ceremonies (baptism, wedding, birthday, birth...)",
  photo: "photo"
  })
booking4 = Booking.new({
  check_in: Date.new(2023, 05, 02),
  check_out: Date.new(2023, 05, 04),
  total_price: 3400,
  validates: "Pending"
})
booking4.user = renter4
booking4.castle = castle4
booking4.save!

#############

renter5 = User.create!({
  email: "maxime.bardin@gmail.com",
  password: "1234567890",
  first_name: "Maxime",
  last_name: "Bardin",
  description: "Hello, I'm Maxime Bardin.
  I like to share holidays with my large family in exceptional places.",
  photo: "photo"
  })
booking5 = Booking.new({
  check_in: Date.new(2023, 09, 12),
  check_out: Date.new(2023, 09, 20),
  total_price: 6275,
  validates: "Pending"
})
booking5.user = renter5
booking5.castle = castle5
booking5.save!


#############

renter6 = User.create!({
  email: "stephanie.legreat@gmail.com",
  password: "1234567890",
  first_name: "Stéphanie",
  last_name: "Legreat",
  description: "Hello, I'm Stéphanie Legreat.
  I am looking for exceptional holiday locations where young and old can have fun.",
  photo: "photo"
  })
booking6 = Booking.new({
  check_in: Date.new(2023, 07, 01),
  check_out: Date.new(2023, 07, 15),
  total_price: 8320,
  validates: "Pending"
})
booking6.user = renter6
booking6.castle = castle6
booking6.save!
