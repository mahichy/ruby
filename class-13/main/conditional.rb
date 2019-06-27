require_relative 'movie'

movie = Movie.new("godfather",10)

    # puts movie.rank == 10
    # puts movie.rank >= 10
    # puts movie.rank < 10

puts "Hit" if movie.rank >=10
    # if movie.rank >= 10
    #     puts "Hit"
    # end
    if movie.rank < 10
        puts "flop"    
    end
