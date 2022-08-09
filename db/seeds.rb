# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "... cleaning database..."

Purchase.destroy_all
User.destroy_all
Item.destroy_all

puts "Database clean!"
puts "... creating users..."

fakeuser1 = User.create!(email: "user1@mail.com", password: "123456", image: "https://images.unsplash.com/photo-1571512599285-9ac4fdf3dba9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80", first_name: "fake1", last_name: "user1", username: "fakeuser1", location: "Barcelona, Spain", credit_left: 735)
fakeuser2 = User.create!(email: "user2@mail.com", password: "123456", image: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80", first_name: "fake2", last_name: "user2", username: "fakeuser2", location: "Madrid, Spain", credit_left: 39)
fakeuser3 = User.create!(email: "user3@mail.com", password: "123456", image: "https://pbs.twimg.com/media/FV_ZZHZXgAAGpBu?format=jpg&name=small", first_name: "fake3", last_name: "user3", username: "fakeuser3", location: "Lisbon, Portugal", credit_left: 250)
admin = User.create!(email: "admin@mail.com", password: "123456", image: "https://images.unsplash.com/photo-1540331547168-8b63109225b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1319&q=80", first_name: "ad", last_name: "min", username: "administrator", admin: true, location: "Rome, Italy", credit_left: 3640)


puts "User created!"
puts "... creating items..."

@items = [
          { name: "Coffee cup",
            description: "Won this in my previous workplace. Don't want to be reminded.",
            credit: 7,
            location: "Porto, Portugal",
            image: '/assets/seed01_coffeecup.jpg',
            user: fakeuser1 },
            { name: "Bracelet",
            description: "My ex-girlfriend gave it to me. Great quality but I want to get rid of it.",
            credit: 12,
            location: "Porto, Portugal",
            image: '/assets/seed02_bracelet.jpg',
            user: fakeuser1 },
            { name: "tba",
            description: "tba",
            credit: 999,
            location: "Berlin, Germany",
            image: '' ,
            user: fakeuser2 },
            { name: "tba",
            description: "tba",
            credit: 25,
            location: "Berlin, Germany",
            image: '' ,
            user: fakeuser2 },
            { name: "tba",
            description: "tba",
            credit: 66,
            location: "Berlin, Germany",
            image: '' ,
            user: fakeuser2 },
            { name: "tba",
            description: "tba",
            credit: 53,
            location: "Lisbon, Portugal",
            image: 'tba' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 24,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 88,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 39,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 85,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 100,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 2,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 28,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 5,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
            { name: "tba",
            description: "tba",
            credit: 325,
            location: "Lisbon, Portugal",
            image: '' ,
            user: fakeuser3 },
]

@items.each do |i|
  item = Item.new(i)
  item.save!
  puts "Created #{item.name}"
end

puts "Finished!"
