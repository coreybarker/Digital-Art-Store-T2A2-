# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Artwork.destroy_all

user = User.create(email: 'customer@test.com', password: '111111')
user.add_role :customer

artist = User.create(email: 'artist@test.com', password: '111111')
artist.add_role :artist

admin = User.create(email: 'admin@test.com', password: '123456')
admin.add_role :admin

Artwork.create(title: 'Pixel Painting', artist: 'Leonardo da Vinci', price: '600', description: 'A legendary da Vinci pixel painting')
Artwork.create(title: 'Sunshine', artist: 'Efe Kurnaz', price: '150', description: 'A worldly sunset image')
Artwork.create(title: 'Something', artist: 'Erick Butler', price: '80', description: 'Artwork of something')
Artwork.create(title: 'Holographic', artist: 'Simon Lee', price: '500', description: 'One of a kind piece')
Artwork.create(title: 'Color Streaks', artist: 'Omid Armin', price: '600', description: 'Some color amongst the shadows')
Artwork.create(title: 'Moving', artist: 'Sketch Machine', price: '200', description: 'Moving Artwork')
Artwork.create(title: 'Purple Chaos', artist: 'Callum Broarde', price: '380', description: 'Chaos in motion')
