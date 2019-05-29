class Player
    attr_reader :name
    attr_accessor :health

    def initialize (name,health=100)
        @name = name
        @health = health 
    end
    def to_s
      "  I'm #{@name} with a health of #{@health} and a score of #{score}."
    end
    def blam
        @health -=10
        puts "#{name} got blammed!"
    end
    def w00t
    @health +=15
    puts "#{@name} got w00ted!"
    end
    def score
        @health + @name.length * 25
    end


end
player1 = Player.new("moe")
player2 = Player.new("larry",60)
player3 = Player.new("curly",125) 

players = [player1,player2,player3]
puts " Ther are #{players.size} players in the game:"

players.each do |m|
puts m
end
# players.each do |n|
# puts n.health
# end
# players.each do |o|
# o.blam
# o.w00t
# o.w00t
# puts o
# end
