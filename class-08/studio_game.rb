class Player
    attr_reader :name,:health
    attr_accessor :name, :health
    

    def initialize(name,health)
        @name = name
        @health = health
        end

    def score
    @health + @name.length    
    end

    def to_s
        " i am #{@name} with a health of #{@health} and a score of #{score}."
        end
    
    
end
player2 = Player.new("larry",60)
puts player2.name
player2.name = "lawrance"
puts player2.name
puts player2.health
puts player2.score
puts player2



