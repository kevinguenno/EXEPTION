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

  user1 = User.create!({ email: "example@gmail.com", password: "leplusbeaudetous", first_name: "Charles", last_name: "Richelieu", description: "Hello, I'm Charles Richelieu", photo: "photo" })
  castle1 = Castle.new({ title: "Incredible Castle", description: "Incredible Castle in France", location: "Tours", price: 875, capacity: 15, photo: "https://www.oisetourisme.com/assets/uploads/2022/08/elsacyril-oisetourisme2021-36chateau-de-pierrefonds.png", category: "French Castle"})
  castle1.user = user1
  castle1.save!

  user2 = User.create!({ email: "kevin@gmail.com", password: "kevinleplusbeaudetous", first_name: "Kevin", last_name: "Guenno", description: "Hello, I'm Kevin Guenno", photo: "photo" })
  booking1 = Booking.new({ check_in: Date.new(2023,03,01), check_out: Date.new(2023,03,15), total_price: 6525, validates: "Pending" })
  booking1.user = user2
  booking1.castle = castle1
  booking1.save!


castle2 = Castle.new({ title: "a Castle", description: "a Castle in France", location: "Tourds", price: 875, capacity: 15, photo: "photo", category: "French Castle"})
castle2.user = user1
castle2.save!

castle3 = Castle.new({ title: "a Castle", description: "a Castle in France", location: "Tourds", price: 875, capacity: 15, photo: "photo", category: "French Castle"})
castle3.user = user1
castle3.save!

castle4 = Castle.new({ title: "a Castle", description: "a Castle in France", location: "Tourds", price: 875, capacity: 15, photo: "photo", category: "French Castle"})
castle4.user = user1
castle4.save!
