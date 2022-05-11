# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Artwork.destroy_all

Artwork.create(title: 'Test1', artist: 'Banksy', price: '2500', description: 'One of a kind piece')
Artwork.create(title: 'Pixel Painting', artist: 'Piccaso', price: '600', description: 'A legendary piccaso pixel painting')
Artwork.create(title: 'Sunshine', artist: 'James', price: '150', description: 'A worldly sunset image')