require_relative 'player'
class Game
    def initialize(title)
        @title = title
        @players = []
        end
        def add_player(a_player)
            @players.push(a_player)
            end
            def play
                puts "There are #{@players.size} players in #{@title}."

                @players.each do |m|
                    puts m
                    end
                end
end
