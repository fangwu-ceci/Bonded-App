# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

uk_cities = ["London", "Bristol", "Manchester", "Liverpool", "Cambridge", "Canterbury", "Birmingham", "Brighton", "Bath", "Reading"];
age = (28..45).to_a

Post.delete_all

puts "deleting all user groups..."
UserGroup.destroy_all

puts "deleting all posts..."
Post.destroy_all

puts "deleting all messages..."
Message.destroy_all

puts "deleting all chatrooms..."
Chatroom.destroy_all

puts "deleting all users..."
User.destroy_all

puts "deleting all groups..."
Group.destroy_all

puts "creating users..."

user1 = User.create!(first_name: "Bob", last_name: "Smith", nickname: "Bobby", gender: "Male", age: age.sample, location: uk_cities.sample, email: "bobby@smith.com", password: "123456", about: "City professional who wants to find likeminded friends. I love art,theatre and books. Keen to exchange my reading list and form a bookclub. ", avatar_url: "https://www.biography.com/.image/t_share/MTgwMjk3MjI5MjU5NTE1MDMw/gettyimages-3315233.jpg")
user2 = User.create!(first_name: "Jenny", last_name: "Johnson", nickname: "Jen", gender: "Female", age: age.sample, location: uk_cities.sample, email: "jen@johnson.com", password: "123456", about: " I am passionate about empowering women and would like find other wonderwomen to change the world together", avatar_url: "https://discoverymood.com/wp-content/uploads/2020/04/Mental-Strong-Women-min-480x340.jpg")
user3 = User.create!(first_name: "Alice", last_name: "Brown", nickname: "Ally", gender: "Female", age: age.sample, location: uk_cities.sample, email: "alice@brown.com", password: "123456", about: "A single mum who wants to find other mums to go shopping and do fun things together, not just talk about changing nappies.", avatar_url: "https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2014/11/4-1.jpg?fit=900%2C675&ssl=1")
user4 = User.create!(first_name: "Amy", last_name: "Jones", nickname: "Amy", gender: "Female", age: age.sample, location: uk_cities.sample, email: "amy@jones.com", password: "123456", about: "I am a freelance wrirter. I love travelling and writing stories. I'd like to find friends to travel together. My next destination is Argentina. ", avatar_url: "https://images.unsplash.com/photo-1582610285985-a42d9193f2fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHdvbWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80")
user5 = User.create!(first_name: "Nicolas", last_name: "Johnson", nickname: "Nick", gender: "Male", age: age.sample, location: uk_cities.sample, email: "nick@johnson.com", password: "123456", about: " New to the city, looking to meet locals to do sports, i.e. tennis, rugy and climbing. ", avatar_url:"https://hips.hearstapps.com/hbz.h-cdn.co/assets/17/08/terencetelle.png")
user6 = User.create!(first_name: "Adam", last_name: "Smith", nickname: "Adam", gender: "Male", age: age.sample, location: uk_cities.sample, email: "adam@smith.com", password: "123456", about: "Just arrived at the city and would like to meet more likeminded friends and explore the city together.", avatar_url:"https://media.glamour.com/photos/5b6873f780b8607e43a9ec0e/1:1/w_354%2Cc_limit/river.jpg")
user7 = User.create!(first_name: "Emma", last_name: "Baker", nickname: "Emma", gender: "Female", age: age.sample, location: uk_cities.sample, email: "emma@baker.com", password: "123456", about: "Keen traveller and explorer, Want to find some nice friends to enjoy this beautiful city with.", avatar_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Gal_Gadot_by_Gage_Skidmore_2.jpg/1200px-Gal_Gadot_by_Gage_Skidmore_2.jpg")
user8 = User.create!(first_name: "Elizabeth", last_name: "Taylor", nickname: "Lizzy", gender: "Female", age: age.sample, location: uk_cities.sample, email: "lizzy@taylor.com", password: "123456", about: "I am a passionate baker. I love baking lots of cakes in my sparetime and would love to find a friend to bake cakes with.", avatar_url: "https://d1vo8zfysxy97v.cloudfront.net/media/blog/abnormal-testosterone-levels-in-women-symptoms-risks-and-helpful-foods_fi_va9185016baf8cec6e6ec901990453bef5ea7d999.jpg")
user9 = User.create!(first_name: "Oliver", last_name: "Jones", nickname: "Ollie", gender: "Male", age: age.sample, location: uk_cities.sample, email: "oliver@jones.com", password: "123456", about: "Expanding my social circle, meeting like minded frineds to check out new foodie haunts and do more activities together", avatar_url:"https://cavemancircus.com/wp-content/uploads/2019/04/ana-maria-nichita-417521-unsplash-2.jpg")

Chatroom.create!(name: "Jenny", chatroom_requester_id: 1, chatroom_receiver_id: 2)
Chatroom.create!(name: "Ally", chatroom_requester_id: 1, chatroom_receiver_id: 3)
Chatroom.create!(name: "Amy", chatroom_requester_id: 1, chatroom_receiver_id: 4)
Chatroom.create!(name: "Nick", chatroom_requester_id: 1, chatroom_receiver_id: 5)
Chatroom.create!(name: "Adam", chatroom_requester_id: 1, chatroom_receiver_id: 6)
Chatroom.create!(name: "Emma", chatroom_requester_id: 1, chatroom_receiver_id: 7)
Chatroom.create!(name: "Lizzy", chatroom_requester_id: 1, chatroom_receiver_id: 8)
Chatroom.create!(name: "Ollie", chatroom_requester_id: 1, chatroom_receiver_id: 9)


group1 = Group.create!(
  image_url: "https://images.pexels.com/photos/7632045/pexels-photo-7632045.jpeg",
  name: "South Mountain Trail run",
  about: "Join us this Sunday and kick start your fitness with an energizing, fun group run! Whether you're a beginner, or a regular runner, runners
  and joggers of all skill levels are welcome. We're always excited to meet new people and we always run together as a group!",
  location: uk_cities.sample,
  category: "Sport & Fitness"
)

group2 = Group.create!(
  image_url: "https://images.pexels.com/photos/3810788/pexels-photo-3810788.jpeg",
  name: "Creative Projects Work group",
  about: "This group is open to anyone who identifies as a healer, a creative or solopreneur. Whether this is your main business or a side hustle.
  This is not about promoting what you do: no elevator pitches here! It's about creating an inspiring space where we all work on a project we are trying
  to bring to fruition",
  location: uk_cities.sample,
  category: "Art & Culture"
)

group3 = Group.create!(
  image_url: "https://images.pexels.com/photos/7991119/pexels-photo-7991119.jpeg",
  name: "Movies for All",
  about: "This Group is a unique collective made up of directors, producers, cinematographers, screen writers, sound designers, photographers,
  composers, actors, and students that collaborate on a wide range of creative filmmaking projects. Members range the gamut from well known professionals,
  to students, to those just interested in learning and being a part of a creative community.",
  location: uk_cities.sample,
  category: "Films"
)

group4 = Group.create!(
  image_url: "https://images.pexels.com/photos/1015568/pexels-photo-1015568.jpeg",
  name: "Love Tech!",
  about: "Are you involved in a startup developing, or working with immersive technology? Are you an artist, engineer, or producer
  creating content for XR, VR, AR, or any type of interactive tech? Are you involved in film, theater, or the arts and want to learn about how immersive
  tech might change your world? If so, this is the meetup for you!",
  location: uk_cities.sample,
  category: "Technology"
)

group5 = Group.create!(
  image_url: "https://images.pexels.com/photos/7991661/pexels-photo-7991661.jpeg",
  name: "Smiths Martial Arts Club",
  about: "The purpose of this group is to foster a safe and engaging learning environment for Martial Artist regardless of skill level. This group will
  help new students to learn and grow as Martial Artists while developing new skills and confidences. The purpose of this group is to foster a safe and
  engaging learning environment for Martial Artist regardless of skill level. This group will help new students to learn and grow as Martial Artists
  while developing new skills and confidences.",
  location: uk_cities.sample,
  category: "Sport & Fitness"
)

group6 = Group.create!(
  image_url: "https://images.pexels.com/photos/13291883/pexels-photo-13291883.jpeg",
  name: "People with Pets",
  about: "If you are a member of a pet club, then we know you love your furry friends. Our beloved pets come in all shapes and sizes - all breeds.
  We welcome them into our family and they become part of our daily lives. By joining our pets and animals group, you can associate with other pet lovers,
  learn about different types of animals or assist with volunteering or rescues in your local area.",
  location: uk_cities.sample,
  category: "Pets & Animals"
)

group7 = Group.create!(
  image_url: "https://images.pexels.com/photos/6173926/pexels-photo-6173926.jpeg",
  name: "Tara's Bluegrass Jam",
  about: "If you are looking for some great music, to expand your music horizons, at an affordable price in a great venue, this is a group you should join!
  The concerts run $10-$15 and refreshments are served afterwards for a chance to mingle.",
  location: uk_cities.sample,
  category: "Music"
)

group8 = Group.create!(
  image_url: "https://images.pexels.com/photos/6896221/pexels-photo-6896221.jpeg",
  name: "Arts at Night",
  about: "This is a group for people interested in the arts. We offer a variety of cultural experiences, some of which involve
  attending public events as a group including a series of art gallery tours in various neighborhoods, with exclusive talks by gallery owners
  and staff, and sometimes the artists themselves; Classical music concerts and lectures, including chamber and piano recitals at discount prices",
  location: uk_cities.sample,
  category: "Art & Culture"
  )

group9 = Group.create!(
  image_url: "https://images.pexels.com/photos/262524/pexels-photo-262524.jpeg",
  name: "Intermediete Co-Ed Football",
  about: "Intermediate co-ed football club group. We play for fun, games are competitive but not aggressive. Be respectful to other
  players, we're here to have a good time after a long week of work. Level is for beginner (with prior experience) / intermediate players.
  We will be posting other events such as tournaments or social gatherings. See you on the pitch!",
  location: uk_cities.sample,
  category: "Sport & Fitness"
)

group10 = Group.create!(
  image_url: "https://images.pexels.com/photos/4114950/pexels-photo-4114950.jpeg",
  name: "Elian Delage Guitar Ensemble",
  about: "This group brings people together through guitar playing. Whether you're taking one of our workshops or participating in ensembles,
  jams or our open mic you'll get a chance to meet great people, have a great experience and expand your guitar skills in the process. Ukulele players,
  bassists and singers are also welcome.Fun and friendly group for all to join",
  location: uk_cities.sample,
  category: "Music"
)

UserGroup.create!(user_id: user1.id, group_id: group1.id)
UserGroup.create!(user_id: user2.id, group_id: group1.id)
UserGroup.create!(user_id: user3.id, group_id: group1.id)

UserGroup.create!(user_id: user4.id, group_id: group2.id)
UserGroup.create!(user_id: user9.id, group_id: group2.id)
UserGroup.create!(user_id: user6.id, group_id: group2.id)
UserGroup.create!(user_id: user7.id, group_id: group2.id)

UserGroup.create!(user_id: user8.id, group_id: group3.id)
UserGroup.create!(user_id: user9.id, group_id: group3.id)
UserGroup.create!(user_id: user6.id, group_id: group3.id)

UserGroup.create!(user_id: user6.id, group_id: group4.id)
UserGroup.create!(user_id: user4.id, group_id: group4.id)
UserGroup.create!(user_id: user9.id, group_id: group4.id)
UserGroup.create!(user_id: user8.id, group_id: group4.id)
UserGroup.create!(user_id: user5.id, group_id: group4.id)

UserGroup.create!(user_id: user8.id, group_id: group5.id)
UserGroup.create!(user_id: user3.id, group_id: group5.id)
UserGroup.create!(user_id: user4.id, group_id: group5.id)
UserGroup.create!(user_id: user8.id, group_id: group5.id)

UserGroup.create!(user_id: user1.id, group_id: group6.id)
UserGroup.create!(user_id: user7.id, group_id: group6.id)
UserGroup.create!(user_id: user3.id, group_id: group6.id)

UserGroup.create!(user_id: user8.id, group_id: group7.id)
UserGroup.create!(user_id: user5.id, group_id: group7.id)
UserGroup.create!(user_id: user3.id, group_id: group7.id)
UserGroup.create!(user_id: user4.id, group_id: group7.id)
UserGroup.create!(user_id: user9.id, group_id: group7.id)
UserGroup.create!(user_id: user2.id, group_id: group7.id)

UserGroup.create!(user_id: user3.id, group_id: group8.id)
UserGroup.create!(user_id: user7.id, group_id: group8.id)
UserGroup.create!(user_id: user2.id, group_id: group8.id)
UserGroup.create!(user_id: user4.id, group_id: group8.id)
UserGroup.create!(user_id: user9.id, group_id: group8.id)

UserGroup.create!(user_id: user2.id, group_id: group9.id)
UserGroup.create!(user_id: user9.id, group_id: group9.id)
UserGroup.create!(user_id: user7.id, group_id: group9.id)

UserGroup.create!(user_id: user5.id, group_id: group10.id)
UserGroup.create!(user_id: user6.id, group_id: group10.id)
UserGroup.create!(user_id: user3.id, group_id: group10.id)
UserGroup.create!(user_id: user2.id, group_id: group10.id)

puts "Users, groups and user groups sucessfully created!"
