# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Create users:
user1 = User.create!(email: "user1@example.com", password: "123456", nickname: "user1")
user2 = User.create!(email: "user2@example.com", password: "123456", nickname: "user2")
user3 = User.create!(email: "user3@example.com", password: "123456", nickname: "user3")

# Create Interviews:

interview1 = Interview.create!(time: DateTime.new(2009,9,1,17), focus: "Ruby", experience: "medium", interview_language: "english", user: user1)
interview2 = Interview.create!(time: DateTime.new(2020,12,12,17), focus: "PHP", experience: "medium", interview_language: "english", user: user2)
interview3 = Interview.create!(time: DateTime.new(2020,12,12,18), focus: "General", experience: "medium", interview_language: "english", user: user3)

# Create Bookings:

booking1 = Booking.create!(user: user2, interview: interview1)
booking2 = Booking.create!(user: user2, interview: interview3)
booking3 = Booking.create!(user: user3, interview: interview2)
booking4 = Booking.create!(user: user1, interview: interview2)
booking5 = Booking.create!(user: user3, interview: interview2)
booking6 = Booking.create!(user: user1, interview: interview3)
booking7 = Booking.create!(user: user3, interview: interview1)