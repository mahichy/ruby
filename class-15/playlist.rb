require_relative 'movie'
require_relative 'waldorf_and_statler'

class Playlist
  attr_reader :name

  def initialize(name)
    @name = name
    @movies = []
  end
  
  def add_movie(a_movie)
    @movies << a_movie
  end

  def play(viewings)
    puts "#{@name}'s playlist:"
    
    puts @movies.sort

    1.upto(viewings) do |count|
      puts "\nviewing #{count}: "
      @movies.each do |m|
        WaldorfAndStatler.review(m)
        puts m
      end
    end
  end
  def print_stat
    puts "\n#{@name}'s Stats:"

    hits, flops = @movies.partition { |m| m.hit?}

    puts "\nHits"
    puts hits.sort

    puts "\nFlops"
    puts flops.sort

  end








end

