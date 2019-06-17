class Movie

    attr_reader :rank
    # attr_writer :title
    attr_accessor :title

    def initialize (title,rank=0)
        @title = title.capitalize
        @rank = rank
        end

    
        
   
        

        def normalized_rank
           @rank / 10
           end


        def thums_up
        @rank +=1
        end
        def thums_down
           @rank -=1
        end

        def to_s
            "#{@title} has a rank #{@rank}"
        end
end

class Playlist
    def initialize(name)
        @name = name
        @movies = [] 
    end    
    def add_movie(movie)
        @movies << movie
    end
    def play
        puts "#{@name}'s playlist:"
        puts @movies 

        @movies.each do |m|
            m.thums_up
            puts m
        end
    end

end

movie1 = Movie.new("goonies",10)
movie2 = Movie.new("ghostbusters",9)
movie3 = Movie.new("goldfinger")

playlist1 = Playlist.new("Kermit")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play




