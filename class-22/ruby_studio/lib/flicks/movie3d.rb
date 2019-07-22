require_relative 'movie'
module Flicks
    class Movie3D < Movie
        attr_reader :wow_factor

        def initialize(title, rank , wow_factor)
            super(title, rank)
            @wow_factor = wow_factor
        end

        def thums_up
         
            @wow_factor.times {super}
        end

        def show_effect
        
            puts "Wow! " * @wow_factor 
        end

    end
end
if __FILE__==$0
movie3d = Movie3D.new("glee",5, 20)
puts movie3d.title
puts movie3d.rank

movie3d.thums_up
puts movie3d.rank


puts movie3d

movie3d.show_effect
end