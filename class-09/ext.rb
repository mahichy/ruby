class Player
    attr_reader :name
    attr_accessor :health

    def initialize(name,health=100)
    @name = name
    @health = health 
    end
    def score
    @health + @name.length 
    
    end
    def to_s
         " I am #{@name} and my health is #{@health} i got the score #{score}."
    end

    def blam
    @health -= 10
    puts " #{@name} got blammed."
    end
    def w00t
    @health += 15
    puts "#{@name} got w00ted."
    end



end
player1 = Player.new("moe")
player2 = Player.new("larry",60)
player3 = Player.new("curly",80)

players = [player1, player2, player3]
puts "There are #{players.size} player in this game:"

players.each do |d|
puts d
end
players.each do |e|
puts e.name
end
players.each do |f|
puts f.health
end
players.each do |g|
g.blam
g.w00t
g.w00t
puts g    
end

    
