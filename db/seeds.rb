# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

uk_cities = ["London", "Bristol", "Manchester", "Liverpool", "Cambridge", "Canterbury", "Birmingham", "Brighton", "Bath", "Reading"];

puts "deleting all users..."
User.delete_all

puts "deleting all groups..."
Group.delete_all

puts "creating users..."
User.create!(first_name: "Bob", last_name: "Smith", nickname: "Bobby", gender: "male", age: 37, location: uk_cities.sample, email: "bobby@smith.com", password: "123456", about: "City professional who wants to find a likeminded friends. ", avatar_url: "https://www.biography.com/.image/t_share/MTgwMjk3MjI5MjU5NTE1MDMw/gettyimages-3315233.jpg")
User.create!(first_name: "Jenny", last_name: "Johnson", nickname: "Jen", gender: "female", age: 32, location: uk_cities.sample, email: "jen@johnson.com", password: "123456", about: " I am passionate about empowering women and would like find other wonderwomen to change the world together", avatar_url: "https://discoverymood.com/wp-content/uploads/2020/04/Mental-Strong-Women-min-480x340.jpg")
User.create!(first_name: "Alice", last_name: "Brown", nickname: "Ally", gender: "female", age: 29, location: uk_cities.sample, email: "alice@brown.com", password: "123456", about: "A single mum who wants to find other mums to go shopping and do fun things together, not just talk about changing nappies.", avatar_url: "https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2014/11/4-1.jpg?fit=900%2C675&ssl=1")
User.create!(first_name: "Amy", last_name: "Jones", nickname: "Amy", gender: "female", age: 34, location: uk_cities.sample, email: "amy@jones.com", password: "123456", about: "I am a freelance wrirter. I love travelling and writing stories. I'd like to find friends to travel together. My next destination is Argentina. ", avatar_url: "https://images.unsplash.com/photo-1582610285985-a42d9193f2fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHdvbWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80")
User.create!(first_name: "Nicolas", last_name: "Johnson", nickname: "Nick", gender: "male", age: 37, location: uk_cities.sample, email: "nick@johnson.com", password: "123456", about: "Living and working in London, looking to meet locals to do sports, i.e. tennis, rugy and climbing. ", avatar_url:"https://hips.hearstapps.com/hbz.h-cdn.co/assets/17/08/terencetelle.png")
User.create!(first_name: "Adam", last_name: "Smith", nickname: "Adam", gender: "male", age: 40, location: uk_cities.sample, email: "adam@smith.com", password: "123456", about: "Just arrived in London and would like to meet more likeminded friends and explore the city together.", avatar_url:"https://media.glamour.com/photos/5b6873f780b8607e43a9ec0e/1:1/w_354%2Cc_limit/river.jpg")
User.create!(first_name: "Emma", last_name: "Baker", nickname: "Emma", gender: "female", age: 28, location: uk_cities.sample, email: "emma@baker.com", password: "123456", about: "Scottish living in islington. Just want to find some nice friends to enjoy this beautiful city with.", avatar_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Gal_Gadot_by_Gage_Skidmore_2.jpg/1200px-Gal_Gadot_by_Gage_Skidmore_2.jpg")
User.create!(first_name: "Elizabeth", last_name: "Taylor", nickname: "Lizzy", gender: "female", age: 35, location: uk_cities.sample, email: "lizzy@taylor.com", password: "123456", about: "I am a passionate baker. I love baking lots of cakes in my sparetime and would love to find a friend to bake cakes with.", avatar_url: "https://d1vo8zfysxy97v.cloudfront.net/media/blog/abnormal-testosterone-levels-in-women-symptoms-risks-and-helpful-foods_fi_va9185016baf8cec6e6ec901990453bef5ea7d999.jpg")
User.create!(first_name: "Oliver", last_name: "Jones", nickname: "Ollie", gender: "male", age: 35, location: uk_cities.sample, email: "oliver@jones.com", password: "123456", about: "Expanding my social circle, meeting like minded frineds to check out new foodie haunts and do more activities together", avatar_url:"https://cavemancircus.com/wp-content/uploads/2019/04/ana-maria-nichita-417521-unsplash-2.jpg")

puts "creating groups..."
Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/505273045/178x178.jpg",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/497148054/178x178.jpg?",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/505814166/178x178.jpg",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/499796502/178x178.jpg",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/505660111/178x178.jpg",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/505256914/178x178.jpg",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/499327784/178x178.jpg",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/506494672/178x178.jpg",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/502161828/178x178.jpg",   name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

Group.create!(
  image_url: "https://secure-content.meetupstatic.com/images/classic-events/448572178/178x178.jpg",
  name: Faker::Team.name,
  about: "Fun and friendly group for all to join",
  location: Faker::Address.city,
  category: Faker::Hobby.activity
)

puts "Finished creating users and groups!"
