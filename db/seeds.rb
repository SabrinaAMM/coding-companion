require 'json'
require 'open-uri'

puts "clearing data"

Message.destroy_all
Booking.destroy_all
Interview.destroy_all
User.destroy_all

puts "generating Users"

john = User.create!(email: "john@example.com", password: "123456", nickname: "Johnny_the_John", bio: "I got lots of experience with jobs and I worked a lot. But now I want a new job because new jobs are good.")
john.photo.attach(io: File.open(Rails.root.join('app','assets','images','john.jpeg')), filename: 'john.jpeg', content_type: 'image/jpeg')

mary = User.create!(email: "mary@example.com", password: "123456", nickname: "Cool_Mary", bio: "Hi, I am Mary and I love coding. I want to do coding as a job. For my next interview I look for cool training partners.")
mary.photo.attach(io: File.open(Rails.root.join('app','assets','images','mary.jpeg')), filename: 'mary.jpeg', content_type: 'image/jpeg')

zoe = User.create!(email: "zoe@example.com", password: "123456", nickname: "zoe-bowie", bio: "I just finished my Computer Science degree and now I am looking for someone to practice with for a job interview.")
zoe.photo.attach(io: File.open(Rails.root.join('app','assets','images','zoe.jpeg')), filename: 'zoe.jpeg', content_type: 'image/jpeg')

peter = User.create!(email: "peter@example.com", password: "123456", nickname: "coding-king", bio: "I am the KING OF CODING and I will show you how it works so you get every job you want!")
peter.photo.attach(io: File.open(Rails.root.join('app','assets','images','peter.jpeg')), filename: 'peter.jpeg', content_type: 'image/jpeg')

lisa = User.create!(email: "lisa@example.com", password: "123456", nickname: "lizzy101", bio: "studied in England, worked as developer in Seoul, worked as senior develper in Tokio")
lisa.photo.attach(io: File.open(Rails.root.join('app','assets','images','lisa.jpeg')), filename: 'lisa.jpeg', content_type: 'image/jpeg')

bruce = User.create!(email: "bruce@example.com", password: "123456", nickname: "brucybruce", bio: "I got 10 years of experience in Ruby and Ruby on rails, CSS, JS and Python. I can help you prepare for your job interview!")
bruce.photo.attach(io: File.open(Rails.root.join('app','assets','images','bruce.jpeg')), filename: 'bruce.jpeg', content_type: 'image/jpeg')

rob = User.create!(email: "rob@example.com", password: "123456", nickname: "robbs", bio: "I got 10 years of experience in Ruby and Ruby on rails, CSS, JS and Python. I can help you prepare for your job interview!")
rob.photo.attach(io: File.open(Rails.root.join('app','assets','images','rob.jpeg')), filename: 'rob.jpeg', content_type: 'image/jpeg')

mario = User.create!(email: "mario@example.com", password: "123456", nickname: "mast2020", bio: "I am a strategy consultant based in Munich. I just finished the Le Wagon bootcamp in Munich to learn coding and acquire the right skillset to launch my own products!")
mario.photo.attach(io: File.open(Rails.root.join('app','assets','images','mario.png')), filename: 'mario.png', content_type: 'image/png')

nico = User.create!(email: "nico@example.com", password: "123456", nickname: "nicolaspck", bio: "I just finished school this year and decided to learn coding because I think that it will always be useful. Coding is now my passion and I am looking forward to prepare myself for my first
job interview with like-minded companions on this platform.")
nico.photo.attach(io: File.open(Rails.root.join('app','assets','images','nico.jpeg')), filename: 'nico.jpeg', content_type: 'image/jpeg')

puts "generating Interviews"

# Today
interview1 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,12,12,19), end_time: Time.new(2020,12,12,21), focus: "HTML/CSS", experience: "Beginner", interview_language: "German", user: mary)
interview2 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,12,13,19), end_time: Time.new(2020,12,13,21), focus: "HTML/CSS", experience: "Intermediate", interview_language: "Spanish", user: peter)
interview3 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,11,29,20), end_time: Time.new(2020,11,29,22), focus: "Ruby", experience: "Intermediate", interview_language: "English", user: john)
interview4 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,12,13,21), end_time: Time.new(2020,12,13,23), focus: "Ruby", experience: "Beginner", interview_language: "German", user: nico)
interview5 = Interview.create!(date: Date.parse("02.12.2020"), start_time: Time.new(2020,11,27,21), end_time: Time.new(2020,11,27,23), focus: "Javascript", experience: "Expert", interview_language: "English", user: zoe)
# Tomorrow
interview6 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,12,12,14), end_time: Time.new(2020,12,12,16), focus: "Javascript", experience: "Intermediate", interview_language: "English", user: lisa)
interview7 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,12,10,15), end_time: Time.new(2020,12,10,17), focus: "Ruby", experience: "Beginner", interview_language: "Spanish", user: peter)
interview8 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,11,28,19), end_time: Time.new(2020,11,28,21), focus: "HTML/CSS", experience: "Beginner", interview_language: "English", user: mary)
interview9 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,12,14,19), end_time: Time.new(2020,12,14,21), focus: "Ruby", experience: "Expert", interview_language: "French", user: bruce)
interview10 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,12,12,20), end_time: Time.new(2020,12,12,22), focus: "Ruby", experience: "Beginner", interview_language: "English", user: lisa)
interview11 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,12,12,21), end_time: Time.new(2020,12,12,23), focus: "Ruby", experience: "Expert", interview_language: "German", user: zoe)
interview12 = Interview.create!(date: Date.parse("03.12.2020"), start_time: Time.new(2020,11,28,21), end_time: Time.new(2020,11,28,23), focus: "Javascript", experience: "Expert", interview_language: "English", user: john)
# In the future
interview13 = Interview.create!(date: Date.parse("08.12.2020"), start_time: Time.new(2020,12,16,13), end_time: Time.new(2020,12,16,15), focus: "Ruby", experience: "Expert", interview_language: "French", user: bruce)
interview14 = Interview.create!(date: Date.parse("09.12.2020"), start_time: Time.new(2020,12,16,14), end_time: Time.new(2020,12,16,16), focus: "Ruby", experience: "Beginner", interview_language: "Spanish", user: rob)
interview15 = Interview.create!(date: Date.parse("11.12.2020"), start_time: Time.new(2020,12,16,15), end_time: Time.new(2020,12,16,17), focus: "Ruby", experience: "Expert", interview_language: "French", user: bruce)
interview16 = Interview.create!(date: Date.parse("13.12.2020"), start_time: Time.new(2020,12,16,16), end_time: Time.new(2020,12,16,18), focus: "Javascript", experience: "Intermediate", interview_language: "Spanish", user: lisa)
interview17 = Interview.create!(date: Date.parse("14.12.2020"), start_time: Time.new(2020,12,16,17), end_time: Time.new(2020,12,16,19), focus: "HTML/CSS", experience: "Expert", interview_language: "French", user: bruce)
interview18 = Interview.create!(date: Date.parse("14.12.2020"), start_time: Time.new(2020,12,16,19), end_time: Time.new(2020,12,16,21), focus: "Javascript", experience: "Beginner", interview_language: "Spanish", user: rob)
interview19 = Interview.create!(date: Date.parse("18.12.2020"), start_time: Time.new(2020,12,16,21), end_time: Time.new(2020,12,16,23), focus: "HTML/CSS", experience: "Expert", interview_language: "French", user: bruce)
interview20 = Interview.create!(date: Date.parse("20.12.2020"), start_time: Time.new(2020,12,16,21), end_time: Time.new(2020,12,16,23), focus: "Javascript", experience: "Intermediate", interview_language: "Spanish", user: mary)

# puts "generating Bookings"

puts "done"
