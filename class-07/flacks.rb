# class Movie 
#        def initialize (title,rank=0)
#               @title = title.capitalize
#               @the_rank = rank
#               end
#        def listening
#               "#{@title} has a rank of #{@the_rank}"
#               end
# end

#  movie1 = Movie.new("goonies",10)
#  puts movie1.listening

#  movie2 = Movie.new("ghostbusters", 9)
#  puts movie2.listening

#  movie3 = Movie.new ("goldfinger")
#  puts movie3.listening


class Movie 
       def initialize (title,rank=0)
              @title = title.capitalize
              @the_rank = rank
              end

              def thums_up
              #@the_rank = @the_rank + 1
              @the_rank += 1
              end

              def thums_down
              #@the_rank = @the_rank - 1
              @the_rank -= 1
              end

       def to_s
              "#{@title} has a rank of #{@the_rank}"
              end
end

 movie1 = Movie.new("goonies",10)
 movie1.thums_up
 puts movie1

 movie2 = Movie.new("ghostbusters", 9)
 movie2.thums_down
 puts movie2

 movie3 = Movie.new ("goldfinger")
 puts movie3