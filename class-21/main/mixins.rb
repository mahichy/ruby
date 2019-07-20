module Rankable
    def thums_up
        puts "#{@title} got a thums up!"    
    end    
end


class Movie
    include Rankable
    def initialize(title, rank)
        @title = title
        @rank = rank 
    end
end

class Song
    include Rankable
    def initialize(title, rank)
        @title = title
        @rank = rank 
    end    
end

movie = Movie.new("goonies",10)
movie.thums_up
song = Song.new("ruby baby", 10)
song.thums_up