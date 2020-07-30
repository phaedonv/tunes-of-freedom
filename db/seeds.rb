# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "now destroying all lists & users..."
List.destroy_all
User.destroy_all

puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."

puts "now creating admin!"
p admin = User.create!(
  email: "admin@admin.com",
  password: 'EnterYourPassword',
  name: "nemo",
  admin: true
  )


puts "now creating some lists...."

puts "..........................."
puts "..........................."
puts "..........................."

photo1 = File.open(File.join(Rails.root, "/app/assets/images/tof.gif"))
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

photo2 = File.open(File.join(Rails.root, "/app/assets/images/tof.gif"))
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

photo3 = File.open(File.join(Rails.root, "/app/assets/images/tof.gif"))
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

photo4 = File.open(File.join(Rails.root, "/app/assets/images/tof.gif"))
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

photo5 = File.open(File.join(Rails.root, "/app/assets/images/tof.gif"))
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

photo6 = File.open(File.join(Rails.root, "/app/assets/images/tof.gif"))
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

puts "Lists created! Enjoy!"
