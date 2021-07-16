# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'

url = 'http://tmdb.lewagon.com/movie/top_rated'
base_url = 'https://image.tmdb.org/t/p/w500'
response = RestClient.get(url)
movie = JSON.parse(response)
movie['results'].each do |movie|
  title = movie['title']
  overview = movie['overview']
  poster_url = base_url + movie['poster_path']
  rating = movie['vote_average']
  Movie.create(title: title, overview: overview, poster_url: poster_url, rating: rating)
end

puts "#{Movie.count} movies created!"
