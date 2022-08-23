# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "deleting all users"
User.delete_all
puts "creating users"
User.create!(first_name: "Bob", last_name: "Smith", nickname: "Bobby", age: 37, location: "London", email: "bobby@smith.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
User.create!(first_name: "Jenny", last_name: "Johnson", nickname: "Jen", age: 32, location: "London", email: "jen@johnson.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
User.create!(first_name: "Alice", last_name: "Brown", nickname: "Ally", age: 29, location: "London", email: "alice@brown.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
User.create!(first_name: "Amy", last_name: "Jones", nickname: "Amy", age: 34, location: "London", email: "amy@jones.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
User.create!(first_name: "Nicolas", last_name: "Johnson", nickname: "Nick", age: 37, location: "London", email: "nick@johnson.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
User.create!(first_name: "Adam", last_name: "Smith", nickname: "Adam", age: 40, location: "London", email: "adam@smith.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
User.create!(first_name: "Emma", last_name: "Baker", nickname: "Emma", age: 28, location: "London", email: "emma@baker.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
User.create!(first_name: "Elizabeth", last_name: "Taylor", nickname: "Lizzy", age: 35, location: "London", email: "lizzy@taylor.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
User.create!(first_name: "Nigel", last_name: "Jones", nickname: "Nigel", age: 35, location: "London", email: "nigel@jones.com", password: "123456", about: "City professional who wants to find a likeminded friends.")
