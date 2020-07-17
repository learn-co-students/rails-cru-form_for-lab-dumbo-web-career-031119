# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.create(name: "Wildstyle Method", artist_id: 1, genre_id: 1)
Genre.create(name: "Dubstep")
Artist.create(name: "Bassnectar", bio: "Wook King")
Artist.create(name: "Rufus du Sol", bio: "Australian")
Song.create(name: "Innervisions", artist_id: 2, genre_id: 2)
Genre.create(name: "Burner Electronica")