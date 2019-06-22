require_relative 'games'
class Player
    def initialize(name,health=0)
        @name = name
        @health = health
    end
    def to_s
        "i am #{@name} my health is #{@health}." 
    end
end

