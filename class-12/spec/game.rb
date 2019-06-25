require_relative 'player'

class Game
    attr_reader :title

    def initialize(title)
        @title = title
        @players = []
        end
        def add_player(a_player)
            @players<<a_player    
        end
        def play
        puts " there are #{@players.size} players in #{@title} "
        
        @players.each do |m|
            puts m
            end
            @players.each do |m|
                m.blam
                m.w00t
                m.w00t
                puts m
            end
        end
end
if __FILE__== $0
    player1 = Player.new("moe")
    
    end