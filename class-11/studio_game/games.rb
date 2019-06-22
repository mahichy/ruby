class Game
    def initialize(name)
        @name = name
        @players = []
    end
    def add_player(player)
        @players << player 
    end
    def play
      puts  "#{@name}'s playlist:"
      puts @players 

      
    end
end
