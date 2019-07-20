require_relative 'rankable'

class Movie
    include Rankable

    attr_accessor :rank
    # attr_writer :title
    attr_accessor :title

    def initialize (title,rank=0)
        @title = title.capitalize
        @rank = rank
        @snack_carbs = Hash.new(0)
        end

        def each_snack
            @snack_carbs.each do |name, carbs|
                snack = Snack.new(name, carbs)
                yield snack
                end 
        end

        def carbs_consumed
            @snack_carbs.values.reduce(0, :+) 
        end





        def ate_snack(snack)
            @snack_carbs[snack.name] += snack.carbs 
            puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed."
            puts "#{@title}'s snack: #{@snack_carbs}"
        end

       

        def to_s
            "#{@title} has a rank #{@rank} (#{status})"
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
