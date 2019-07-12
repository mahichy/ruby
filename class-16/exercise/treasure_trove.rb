Treasure = Struct.new(:name, :points)

module TreasureTrove
    TREASURE = [
        Treasure.new(:pie,          5),
        Treasure.new(:bottle,      25),
        Treasure.new(:hammer,      50),
        Treasure.new(:skillet,    100),
        Treasure.new(:broomstick, 200),
        Treasure.new(:crowbar,    400)

    ]
    def self.random
        TREASURE.sample    
    end

end
if __FILE__ == $0
puts TreasureTrove::TREASURE

end