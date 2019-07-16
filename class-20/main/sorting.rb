require_relative 'movie'

# names = %w(Goonies Ghostbusters Goldfingers Godfather)
# puts names.sort_by { |w| w.length}

movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Godfather", 3)
movie3 = Movie.new("Goldfinger", 7)

movies = [movie1, movie2, movie3]
# puts movies
# puts movie1.rank <=> movie1.rank

 puts movies.sort
# puts movies.sort_by { |m| m.rank}
# puts movies.sort_by { |m| m.rank}.reverse
