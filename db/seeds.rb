# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
# include Faker
User.destroy_all
# Interest.destroy_all

# relationship = ["Friendship", "Possibility of Serious", "Marriage", "Hookups", "Be Partners"]
# 25.times do
# User.create(full_name: Faker::Name.name, user_name: Faker::Internet.username, email: Faker::Internet.email, password: Faker::Internet.password, identity: Faker::Gender.type, location: Faker::Address.state, date_of_birth: Faker::Date.birthday, partner: Faker::Gender.type, relationship_type: relationship.sample)
# end

u1 = User.create(full_name: "Anna Bauman", user_name: "Lulu", email: "Anna@hello.com", password: "haha123", identity: "Non-binary", location: "New York", date_of_birth: "04/02/1981", partner: "Non-binary", relationship_type: "Possibility of Serious",photo: "/assets/person2.jpg")
u2 = User.create(full_name: "Philip Smalls", user_name: "Lil' Dumplin", email: "Dumplin'@lol.com", password: "haha1234", identity: "Male", location: "New York", date_of_birth: "04/02/1987", partner: "Woman", relationship_type: "Possibility of Serious",photo: "/assets/person1.jpg")
u3 = User.create(full_name: "Anthony Won", user_name: "Session", email: "Anthony@lala.com", password: "lol123", identity: "Male", location: "New York", date_of_birth: "04/02/1989", partner: "Woman", relationship_type: "Friendship",photo: "/assets/person3.jpg")
u4 = User.create(full_name: "Sophia Song", user_name: "Giggles", email: "Giggles@hello.com", password: "lola12", identity: "Woman", location: "New York", date_of_birth: "04/02/1990", partner: "Non-binary", relationship_type: "Hookups",photo: "/assets/person4.jpg")
u5 = User.create(full_name: "Mary Crivelli", user_name: "GameGem", email: "Mary@hello.com", password: "hello1", identity: "Woman", location: "Florida", date_of_birth: "04/02/1988", partner: "Male", relationship_type: "Be Partners",photo: "/assets/person5.jpg")
u6 = User.create(full_name: "Rodney Closon", user_name: "Rod", email: "Rodney@loa.com", password: "haha", identity: "Man", location: "New York", date_of_birth: "04/02/1976", partner: "Woman", relationship_type: "Marriage",photo: "/assets/person6.jpg")
u7 = User.create(full_name: "Dean Cartus", user_name: "DesignIt", email: "Dean@nano.com", password: "lol123", identity: "Male", location: "New York", date_of_birth: "04/02/1971", partner: "Woman", relationship_type: "Possibility of Serious",photo: "/assets/person7.jpg")
u8 = User.create(full_name: "Chris Norton", user_name: "GoodGuy", email: "Nort@hello.com", password: "haha123", identity: "Non-binary", location: "New York", date_of_birth: "04/02/1969", partner: "Non-binary", relationship_type: "Possibility of Serious",photo: "/assets/person8.jpg")
u9 = User.create(full_name: "Brianna Dixon", user_name: "CuteGiggles", email: "Brianna@hola.com", password: "hey123", identity: "Woman", location: "New York", date_of_birth: "04/02/1988", partner: "Men", relationship_type: "Possibility of Serious",photo: "/assets/person9.jpg")
u10 = User.create(full_name: "Tashawn", user_name: "Mr.Flamingo", email: "Tash@hello.com", password: "1234", identity: "Man", location: "New York", date_of_birth: "04/02/1975", partner: "Woman", relationship_type: "Friendship",photo: "/assets/person12.jpg")
u11 = User.create(full_name: "Jeff", user_name: "HelloJeff", email: "Jeff@hello.com", password: "ha123", identity: "Man", location: "New York", date_of_birth: "04/02/1978", partner: "Woman", relationship_type: "Marriage",photo: "/assets/person15.jpg")
u12 = User.create(full_name: "Colin Tatro", user_name: "DropDatabase", email: "Colin@hello.com", password: "haha", identity: "Man", location: "New York", date_of_birth: "04/02/1980", partner: "Woman", relationship_type: "Hookups",photo: "/assets/person13.jpg")
u13 = User.create(full_name: "Amy Tollen", user_name: "AT", email: "Amy@lol.com", password: "hello", identity: "Non-binary", location: "New York", date_of_birth: "04/02/1971", partner: "Woman", relationship_type: "Possibility of Serious",photo: "/assets/person10.jpg")
u14 = User.create(full_name: "Adrienne Miranda", user_name: "Spaceship", email: "Adrienne@lola.com", password: "hello", identity: "Non-binary", location: "New York", date_of_birth: "04/02/1982", partner: "Non-binary", relationship_type: "Serious",photo: "/assets/person14.jpg")

# user_find = User.find.rand(1..25)
# interest_find = Interest.find(interest.id)


# Interest.create(hobbies:"Gardening", free_time: "Watch TV", love_animals: true, lifestyle: "Vegan", diet: "Healthy", matcher_id: u)
#  Interest.create(hobbies:"Painting", free_time: "Just be lazy", love_animals: false, lifestyle: "Whatever", diet: "Anything goes", matcher_id: u)
#  Interest.create(hobbies:"Rescue Animals", free_time: "Volunteering", love_animals: true, lifestyle: "Vegan", diet: "Any vegan food", matcher_id: u)
#  Interest.create(hobbies:"Visit Animal Sanctuaries", free_time: "Go on protests", love_animals: true, lifestyle: "Vegan", diet: "Junk and healthy vegan food", matcher_id: u)
#  Interest.create(hobbies:"Writing", free_time: "Take a walk", love_animals: true, lifestyle: "Sometimes go to the gym, eat fish", diet: "Presciterian, try to eat clean", matcher_id: u)
#  Interest.create(hobbies:"Learning", free_time: "Go to the gym", love_animals: true, lifestyle: "Exercise a lot", diet: "Keto", matcher_id: u)
#  Interest.create(hobbies:"Exercise", free_time: "Spend time with my pets", love_animals: true, lifestyle: "Eat vegetables and animal meats", diet: "Regular", matcher_id: u)
#  Interest.create(hobbies:"MMA", free_time: "Hang out with friends", love_animals: true, lifestyle: "Athletic", diet: "Eat whatever is recommended", matcher_id: u)
#  Interest.create(hobbies:"Coding", free_time: "Watch TV", love_animals: true, lifestyle: "Regular", diet: "What I can find", matcher_id: u)
#  Interest.create(hobbies:"Dancing", free_time: "Go out", love_animals: true, lifestyle: "Regular, try to stay healthy", diet: "I watch what I eat but, not all the time", matcher_id: u)

# UserInterest.create(user: user, interest: interest1)
