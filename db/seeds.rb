# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#require "dotenv"
#require_relative '../.env'
require "open-uri"

=begin
Dotenv.load(
  File.join(Rails.root, ".env.local"),
  File.join(Rails.root, ".env.#{Rails.env}"),
  File.join(Rails.root, ".env")
)
=end

pass = ENV["ADMIN_PASS"]
admin = ENV["ADMIN_MAIL"]
whoami = ENV["ADMIN_NAME"]
puts "Now destroying all lists & users..."
User.destroy_all
Dashboard.destroy_all
List.destroy_all


puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."

puts "Now creating admin!"
p admin = User.create!(
  email: admin,
  password: pass,
  name: whoami,
  admin: true
  )
puts "..admin created.."

puts "Now creating users...!"

p user1 = User.create!(
  email: "alpha@gmail.com",
  password: "1234567",
  name: "alpha",
  admin: false
  )

puts "..users created!"

puts "Creating dashboars.."

p dash0 = Dashboard.create!(
  first_name: "Pha",
  last_name: "Edon",
  age: 42,
  location: "Greece",
  status: "Feeling good"
  )
dash0.user_id = admin.id

p dash1 = Dashboard.create!(
  first_name: "Alpha",
  last_name: "User",
  age: 64,
  location: "USA",
  status: "Alpha is also feeling good ;)"
  )
dash1.user_id = user1.id

puts "..dashboards created.."

#=begin
puts "now creating some lists...."

puts "..........................."
puts "..........................."
puts "..........................."

photo1 = File.open(File.join(Rails.root, "/app/assets/images/tof_banner-2.png"))
# photo1 = URI.open("https://media.giphy.com/media/kBkuVMZkRP44BE3s5s/giphy.mp4")
list1 = List.new(
    name: "name 1",
    style: "style 1",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S-F1lY9WwBe7KAelT09qL5O",
    content: "test content text",
    user: admin
    )
list1.photo.attach(io: photo1, filename: 'image.png', content_type: 'image/png')
list1.save

photo2 = File.open(File.join(Rails.root, "/app/assets/images/tof_banner-2.png"))
# photo2 = URI.open("https://media.giphy.com/media/kBkuVMZkRP44BE3s5s/giphy.mp4")
list2 = List.new(
    name: "name 2",
    style: "style 2",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S9DPUfJeh4UmccbneXvy892",
    content: "some text here to test the column..",
    user: admin
    )
list2.photo.attach(io: photo2, filename: 'image.png', content_type: 'image/png')
list2.save

photo3 = File.open(File.join(Rails.root, "/app/assets/images/tof_banner-2.png"))
# photo3 = URI.open("https://media.giphy.com/media/kBkuVMZkRP44BE3s5s/giphy.mp4")
list3 = List.new(
    name: "name 3",
    style: "style 3",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S-Np28FTeUaONyUj3FPFS6h",
    content: "some text here to test the column..",
    user: admin
    )
list3.photo.attach(io: photo3, filename: 'image.png', content_type: 'image/png')
list3.save

photo4 = File.open(File.join(Rails.root, "/app/assets/images/tof_banner-2.png"))
# photo4 = URI.open("https://media.giphy.com/media/kBkuVMZkRP44BE3s5s/giphy.mp4")
list4 = List.new(
    name: "name 4",
    style: "style 4",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S8i9atXqznQPMnU6fl7W3LG",
    content: "some text here to test the column..",
    user: admin
    )
list4.photo.attach(io: photo4, filename: 'image.png', content_type: 'image/png')
list4.save

photo5 = File.open(File.join(Rails.root, "/app/assets/images/tof_banner-2.png"))
# photo5 = URI.open("https://media.giphy.com/media/kBkuVMZkRP44BE3s5s/giphy.mp4")
list5 = List.new(
    name: "name 5",
    style: "style 5",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S8OFKIYhcWoGdRXSbYfZt0V",
    content: "some text here to test the column..",
    user: admin
    )
list5.photo.attach(io: photo5, filename: 'image.png', content_type: 'image/png')
list5.save

photo6 = File.open(File.join(Rails.root, "/app/assets/images/tof_banner-2.png"))
# photo6 = URI.open("https://media.giphy.com/media/kBkuVMZkRP44BE3s5s/giphy.mp4")
list6 = List.new(
    name: "name 6",
    style: "style 6",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S8QHnWB02aULG9TMCQLR1Ej",
    content: "some text here to test the column..",
    user: admin
    )
list6.photo.attach(io: photo6, filename: 'image.png', content_type: 'image/png')
list6.save
#=end
puts "Lists created! Enjoy!"
