require_relative 'movie'
require_relative 'playlist'

movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Ghostbusters", 9)
movie3 = Movie.new("Goldfinger")

playlist = Playlist.new("Kermit")
playlist.add_movie(movie1)
playlist.add_movie(movie2)
playlist.add_movie(movie3)
playlist.play

playlist2 = Playlist.new("Fozzie")
playlist2.add_movie(movie3)

movie4 = Movie.new("gremlines",15)
playlist2.add_movie(movie4)
playlist2.play






