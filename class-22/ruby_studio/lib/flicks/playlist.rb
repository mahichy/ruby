require_relative  'movie'
require_relative 'movie3d'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar'



    module Flicks
        class Playlist
            attr_reader :name

            def initialize(name)
                @name = name
                @movies = [] 
            end  
            def save(to_file="movie_rankings.csv")
                File.open(to_file, "w") do |file|
                    @movies.sort.each do |movie|
                    file.puts "#{movie.title}, #{movie.rank}"
                    end    
                end
            
            end 
            
            def load(from_file)
                File.readlines(from_file).each do |line|
                    title, rank = line.split(",")
                    movie = Movie.new(title, rank.to_i)
                    add_movie(movie)
                end 
            end
            


            def add_movie(movie)
                @movies << movie
            end

        
            
            def play(viewings)
                puts "#{@name}'s playlist:"

                puts @movies.sort

                snacks = SnackBar::SNACKS
                puts "\nThere are #{snacks.size} snacks available in the snack bar."

                snacks.each do |snack|
                    puts " #{snack.name} has #{snack.carbs} carbs."
                end
                1.upto(viewings) do |count|
                    puts "\nviewing #{count}:"
                    @movies.each do |m|
                    WaldorfAndStatler.review(m)
                        snack = SnackBar.random
                        m.ate_snack(snack)                   
                        puts m
                    end
                end
            end

            def total_carbs_consumed
                @movies.reduce(0) do |sum, m|
                    sum + m.carbs_consumed
                end 
            end

            def print_stats
                
                puts "\n#{@name}'s stats:"
                puts "#{total_carbs_consumed} total carbs consumed"

                @movies.sort.each do |m|
                    puts "\n#{m.title}'s snack totals:"

                    m.each_snack do |snack|
                        puts "#{snack.carbs} total #{snack.name} carbs"
                        end
                    puts "#{m.carbs_consumed} grand total carbs."
                end
                
                hits, flops = @movies.partition { |m| m.hit?}

                puts "\nHits:"
                puts hits.sort

                puts "\nFlops:"
                puts flops.sort
            end
        end
    end

