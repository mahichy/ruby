require_relative 'player'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  
  attr_accessor :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(a_player)
    @players.push(a_player)
  end
  
  def play(rounds)
    puts "There are #{@players.size} players in #{@title}: "

    
    @players.each do |player|
      puts player
    end

      tresures = TreasureTrove::TREASURES
      puts "\nThere are #{tresures.size} tresures to be found:"

      tresures.each do |tresure|
        puts "A #{tresure.name} is worth #{tresure.point} points."
      end






    1.upto(rounds) do |round|
      puts "\nRound #{round}"
    
        @players.each do |player|
            GameTurn.take_turn(player)
          puts player
        end
      end

  end
          def print_name_and_health(player)
            puts "#{player.name} #{player.health}"
          end


        def print_stats
          puts "\n#{@title} statastic:"

          # strong_players = @players.select {|player| player.strong?}
          # wimpy_players = @players.reject {|player| player.strong?}

          strong_players, wimpy_players = @players.partition {|player| player.strong?}
          
          puts "\n#{strong_players.size} strong players:"
            strong_players.each do |player|
              print_name_and_health(player)
              end

          puts "\n#{wimpy_players.size} wimpy players:"
              wimpy_players.each do |player|
               print_name_and_health(player)
                end

                puts "\n#{@title} High Scores:"
                @players.sort.each do |player|
                  formated_name = player.name.ljust(20, '.')
                  puts "#{formated_name} #{player.score}"
                end

        end




end
