class Player
    attr_reader :health
    attr_accessor :name
    def initialize(name,health=100)
        @name = name.capitalize
        @health = health
    end
    def to_s
        "I am #{@name} with the health of #{@health} and a score of #{score}."
    end

    def blam
        @health -= 10
        puts "#{@name} got blamed."
    end
    def w00t
        @health += 15
        puts "#{@name} got w00ted."
    end

    def score 
        @health + @name.length
    end

end

if __FILE__ ==$0
    player = Player.new("larry",125)
    puts player.health
    puts player.name
    player.w00t
    puts player.health
    player.blam
    puts player.health
    puts player
    
end