# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Group.delete_all

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
    image_url: "https://secure-content.meetupstatic.com/images/classic-events/502161828/178x178.jpg",
    name: Faker::Team.name,
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
