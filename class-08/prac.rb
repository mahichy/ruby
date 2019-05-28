class Player

    attr_accessor :name,:health

    def initialize(name,health)
        @name = name.capitalize
        @health = health
    end
    def score 
    @health * 25
    end
    def to_s
        "#{@name} play well and his health is #{@health} and his score is #{score}"
        end
end
player1 = Player.new("afridi",55)
puts player1
puts player1.name
puts player1.health
puts player1.score
