class Movie
    def initialize(title,rank=0)
        @title = title.capitalize
        @rank = rank
        # puts "Created a movie object with title ##{title} and a rank #{rank}"
    end
    def thums_up
        # @rank = @rank + 1
        @rank += 1
    end
    def thums_down
        # @rank = @rank - 1
        @rank -= 1
    end
    
    # def listing
    def to_s
        "#{@title} has a rank of #{@rank}"
    end

end

movie1 = Movie.new("goonies",10)
movie1. thums_up
# puts movie1.listing
puts movie1

movie2 = Movie.new("ghostbusters",9)
movie2. thums_down
# puts movie2.listing
puts movie2

movie3 = Movie.new("tum bin")
# puts movie3.listing
puts movie3
