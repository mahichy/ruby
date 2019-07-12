require_relative  'movie'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar.1'

class Playlist
    def initialize(name)
        @name = name
        @movies = [] 
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
                puts "#{m.title} led to #{snack.carbs} #{snack.name} carbs being consumed."
                puts m
            end
        end
    end

    def print_stats
        
        puts "\n#{@name}'s stats:"
        
        hits, flops = @movies.partition { |m| m.hit?}

        puts "\nHits:"
        puts hits.sort

        puts "\nFlops:"
        puts flops.sort
    end







end
