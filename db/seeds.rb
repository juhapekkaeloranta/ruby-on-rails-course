# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
brew1 = Brewery.create name:"Koff", year:1897
brew2 = Brewery.create name:"Malmgard", year:2001
brew3 = Brewery.create name:"Weihenstephaner", year:1042

beer1 = Beer.create name:"Iso 3", style:"Lager", brewery_id: brew1.id
beer2 = Beer.create name:"Karhu", style:"Lager", brewery_id: brew1.id
beer3 = Beer.create name:"Tuplahumala", style:"Lager", brewery_id: brew1.id
beer4 = Beer.create name:"Huvila Pale Ale", style:"Pale Ale", brewery_id: brew2.id
beer5 = Beer.create name:"X Porter", style:"Porter", brewery_id: brew2.id
beer6 = Beer.create name:"Hefeweizen", style:"Weizen", brewery_id: brew3.id
beer7 = Beer.create name:"Helles", style:"Lager", brewery_id: brew3.id

Rating.create score:10, beer_id:beer1.id
Rating.create score:9, beer_id:beer1.id
Rating.create score:2, beer_id:beer2.id
Rating.create score:3, beer_id:beer2.id
Rating.create score:5, beer_id:beer3.id
Rating.create score:8, beer_id:beer3.id
Rating.create score:7, beer_id:beer4.id
Rating.create score:7, beer_id:beer4.id
Rating.create score:1, beer_id:beer5.id
Rating.create score:1, beer_id:beer5.id
Rating.create score:10, beer_id:beer6.id
Rating.create score:10, beer_id:beer6.id
Rating.create score:9, beer_id:beer7.id
Rating.create score:9, beer_id:beer7.id
