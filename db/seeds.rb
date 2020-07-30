# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "now destroying all lists..."
List.destroy_all

puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."
puts "..........................."

puts "now creating admin!"
p admin = User.create!(email: "admin@admin.com", password: "useradmin", name: "nemo")

puts "now creating some lists...."

puts "..........................."
puts "..........................."
puts "..........................."

list1 = List.new(
    name: "name 1",
    style: "style 1",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S-F1lY9WwBe7KAelT09qL5O",
    content: "test content text",
    user: admin
    )

list1.save

list2 = List.new(
    name: "name 2",
    style: "style 2",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S9DPUfJeh4UmccbneXvy892",
    content: "some text here to test the column..",
    user: admin
    )

list2.save

list3 = List.new(
    name: "name 3",
    style: "style 3",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S-Np28FTeUaONyUj3FPFS6h",
    content: "some text here to test the column..",
    user: admin
    )

list3.save

list4 = List.new(
    name: "name 4",
    style: "style 4",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S8i9atXqznQPMnU6fl7W3LG",
    content: "some text here to test the column..",
    user: admin
    )

list4.save

list5 = List.new(
    name: "name 5",
    style: "style 5",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S8OFKIYhcWoGdRXSbYfZt0V",
    content: "some text here to test the column..",
    user: admin
    )

list5.save

list6 = List.new(
    name: "name 6",
    style: "style 6",
    link: "https://www.youtube.com/embed/videoseries?list=PLlBfY57Rd4S8QHnWB02aULG9TMCQLR1Ej",
    content: "some text here to test the column..",
    user: admin
    )

list6.save

puts "Lists created! Enjoy!"
