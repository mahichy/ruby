require_relative  'movie'

class Playlist
    def initialize(name)
        @name = name
        @movies = [] 
    end    
    def add_movie(movie)
        @movies << movie
    end

    def roll_die
        rand(1..6) 
    end
     
    def play
        puts "#{@name}'s playlist:"
        puts @movies 

        @movies.each do |m|
            number_rolled = roll_die
            if number_rolled < 3
                m.thums_down
                puts "#{m.title} got a thums down."
            elsif number_rolled < 5
                puts "#{m.title} was skipped."
            else
            m.thums_up
                puts "#{m.title} got a thums up !"
            end
            puts m
        end
    end

end
