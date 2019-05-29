class Player
    def initialize (name,health=0)
        @name = name
        @health = health    
    end
    def thums_up
    @health+=1
    end
    def thums_down
    @health -=1    
    end
    def score
    @health + @name.length * 35 
    end
    def to_s
        "I am #{@name} with a health of #{@health} and a score of #{score}."
    end


end
player1 = Player.new("moe")
player2 = Player.new("larry",60)
player3 = Player.new("curly",125)

players = [player1,player2,player3]
puts "There are #{players.size} players in the game:"

players.each do |m|
    m.thums_up
    puts m
    end

