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
u2 = User.create(full_name: "Philip Smalls", user_name: "Lil' Dumplin", email: "z", password: "haha1234", identity: "Male", location: "New York", date_of_birth: "04/02/1987", partner: "Woman", relationship_type: "Possibility of Serious",photo: "/assets/person1.jpg")
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


 i1 =  Interest.create(hobbies:"Gardening")
 i2 = Interest.create(hobbies:"Painting")
 i3 = Interest.create(hobbies:"Rescue Animals")
 i4 = Interest.create(hobbies:"Visit Animal Sanctuaries")
 i5 = Interest.create(hobbies:"Writing")
 i6 = Interest.create(hobbies:"Basketball")
 i7 = Interest.create(hobbies:"Coding")
 i8 = Interest.create(hobbies:"Just Chill")
 i9 = Interest.create(hobbies:"MMA")
 i10 = Interest.create(hobbies:"Baseball")
 i11 = Interest.create(hobbies:"Going to different events")


  UserInterest.create(user: u1, interest: i1)
  UserInterest.create(user: u2, interest: i2)
  UserInterest.create(user: u3, interest: i11)
  UserInterest.create(user: u13, interest: i6)
  UserInterest.create(user: u11, interest: i3)
  UserInterest.create(user: u6, interest: i5)
  UserInterest.create(user: u8, interest: i7)
  UserInterest.create(user: u10, interest: i9)
  UserInterest.create(user: u12, interest: i10)
  UserInterest.create(user: u14, interest: i4)
  UserInterest.create(user: u4, interest: i8)
  UserInterest.create(user: u5, interest: i4)
  UserInterest.create(user: u7, interest: i9)
  UserInterest.create(user: u9, interest: i3)


# UserInterest.create(user: user, interest: interest1)
# x = Interest.all.length
# y = User.all.length
#
# 10.times do
#   UserInterest.create(user_id: rand(1..y),interest_id: rand(1..x))
# end
