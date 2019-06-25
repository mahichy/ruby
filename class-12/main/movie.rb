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

if __FILE__ == $0
    movie = Movie.new("goonies", 10)
    puts movie.title
    puts movie.rank

    movie.thums_up
    movie.thums_up
    puts movie.rank

    movie.thums_down
    puts movie.rank
    puts movie

end
