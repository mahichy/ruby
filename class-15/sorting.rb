# names = %w(Goonies Ghostbusters Goldfinger Godfather )
# puts names.sort_by { |w| w.length} 
require_relative 'movie'

movie1 = Movie.new("goonies",10)
movie2 = Movie.new("godfather", 3)
movie3 = Movie.new("goldfinger",7)

movies = [movie1, movie2, movie3]
puts movies.sort_by { |m| m.rank }.reverse