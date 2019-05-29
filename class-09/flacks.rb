class Movie

    attr_reader :rank
    # attr_writer :title
    attr_accessor :title

    def initialize (title,rank=0)
        @title = title.capitalize
        @rank = rank
        end

    
        
    #     def title
    #        @title
    #        end
    #     def rank
    #        @rank
    #        end

    #     def title=(new_title)
    #        @title = new_title.capitalize
    #        end
        

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
movie1 = Movie.new("goonies",10)
movie2 = Movie.new("ghostbusters",9)
movie3 = Movie.new("goldfinger")

movies = [movie1,movie2,movie3]
# puts movies

movies.each do |m|
    m.thums_up
    puts m
end





