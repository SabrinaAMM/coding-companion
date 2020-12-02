require 'json'
require 'open-uri'

puts "clearing data"

Message.destroy_all
Booking.destroy_all
Interview.destroy_all
User.destroy_all

puts "generating Users"

image = "https://res.cloudinary.com/yowyowyow/image/upload/v1606822793/default_profil_pic_ugryyk.jpg"
file = URI.open(image)

john = User.new(email: "john@example.com", password: "123456", nickname: "Johnny_the_John", bio: "I got lots of experience with jobs and I worked a lot. But now I want a new job because new jobs are good.")
john.photo.attach(io: file, filename: john.nickname, content_type: 'image/jpg')
john.save!
file = URI.open(image)
mary = User.new(email: "mary@example.com", password: "123456", nickname: "Cool_Mary", bio: "Hi, I am Mary and I love coding. I want to do coding as a job. For my next interview I look for cool training partners.")
mary.photo.attach(io: file, filename: mary.nickname, content_type: 'image/jpg')
mary.save!
file = URI.open(image)
zoe = User.new(email: "zoe@example.com", password: "123456", nickname: "zoe-bowie", bio: "I just finished my Computer Science degree and now I am looking for someone to practice with for a job interview.")
zoe.photo.attach(io: file, filename: zoe.nickname, content_type: 'image/jpg')
zoe.save!
file = URI.open(image)
peter = User.new(email: "peter@example.com", password: "123456", nickname: "coding-king", bio: "I am the KING OF CODING and I will show you how it works so you get every job you want!")
peter.photo.attach(io: file, filename: peter.nickname, content_type: 'image/jpg')
peter.save!
file = URI.open(image)
lisa = User.new(email: "lisa@example.com", password: "123456", nickname: "lizzy101", bio: "studied in England, worked as developer in Seoul, worked as senior develper in Tokio")
lisa.photo.attach(io: file, filename: lisa.nickname, content_type: 'image/jpg')
lisa.save!
file = URI.open(image)
bruce = User.new(email: "bruce@example.com", password: "123456", nickname: "brucybruce", bio: "I got 10 years of experience in Ruby and Ruby on rails, CSS, JS and Python. I can help you prepare for your job interview!")
bruce.photo.attach(io: file, filename: bruce.nickname, content_type: 'image/jpg')
bruce.save!
file = URI.open(image)
rob = User.new(email: "rob@example.com", password: "123456", nickname: "robbs", bio: "I got 10 years of experience in Ruby and Ruby on rails, CSS, JS and Python. I can help you prepare for your job interview!")
rob.photo.attach(io: file, filename: rob.nickname, content_type: 'image/jpg')
rob.save!

puts "generating Interviews"


interview1 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,11,29,17), end_time: Time.new(2020,11,29,19), focus: "Ruby", experience: "Medium Level", interview_language: "English", user: john)
interview2 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,12,12,17), end_time: Time.new(2020,12,12,19), focus: "Ruby", experience: "Beginner", interview_language: "German", user: mary)
interview3 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,11,27,18), end_time: Time.new(2020,11,27,19), focus: "Ruby", experience: "Senior Level", interview_language: "English", user: zoe)
interview4 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,12,13,17), end_time: Time.new(2020,12,13,19), focus: "Ruby", experience: "Medium Level", interview_language: "Spanish", user: peter)
interview5 = Interview.create!(date: Date.parse("12.12.2020"), start_time: Time.new(2020,12,12,17), end_time: Time.new(2020,12,12,19), focus: "Ruby", experience: "Beginner", interview_language: "English", user: lisa)
interview6 = Interview.create!(date: Date.parse("14.12.2020"), start_time: Time.new(2020,12,14,18), end_time: Time.new(2020,12,14,19), focus: "Ruby", experience: "Senior Level", interview_language: "French", user: bruce)
interview7 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,11,28,17), end_time: Time.new(2020,11,28,19), focus: "Ruby", experience: "Expert", interview_language: "French", user: john)
interview8 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,11,28,17), end_time: Time.new(2020,11,28,19), focus: "Ruby", experience: "Medium Level", interview_language: "English", user: mary)
interview9 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,12,12,18), end_time: Time.new(2020,12,12,19), focus: "Ruby", experience: "Senior Level", interview_language: "German", user: zoe)
interview10 = Interview.create!(date: Date.parse("04.12.2020"), start_time: Time.new(2020,12,10,17), end_time: Time.new(2020,12,10,19), focus: "Ruby", experience: "Beginner", interview_language: "English", user: peter)
interview11 = Interview.create!(date: Date.parse("10.12.2020"), start_time: Time.new(2020,12,12,17), end_time: Time.new(2020,12,12,19), focus: "Ruby", experience: "Medium Level", interview_language: "English", user: lisa)
interview12 = Interview.create!(date: Date.parse("16.12.2020"), start_time: Time.new(2020,12,16,18), end_time: Time.new(2020,12,16,19), focus: "Ruby", experience: "Senior Level", interview_language: "Spanish", user: bruce)
interview13 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,12,16,18), end_time: Time.new(2020,12,16,19), focus: "Ruby", experience: "Senior Level", interview_language: "Spanish", user: bruce)
interview14 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,12,16,18), end_time: Time.new(2020,12,16,19), focus: "Ruby", experience: "Senior Level", interview_language: "Spanish", user: bruce)
interview15 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,12,16,18), end_time: Time.new(2020,12,16,19), focus: "Ruby", experience: "Senior Level", interview_language: "Spanish", user: bruce)
interview16 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,12,16,18), end_time: Time.new(2020,12,16,19), focus: "Ruby", experience: "Senior Level", interview_language: "Spanish", user: bruce)


puts "generating Bookings"

booking1 = Booking.create!(user: bruce, interview: interview1)
booking2 = Booking.create!(user: lisa, interview: interview2)
booking3 = Booking.create!(user: peter, interview: interview3)
booking4 = Booking.create!(user: zoe, interview: interview4)
booking5 = Booking.create!(user: zoe, interview: interview5)
booking6 = Booking.create!(user: zoe, interview: interview6)

puts "done"
