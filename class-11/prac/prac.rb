class Player
    def initialize(name,health=0)
        @name = name
        @health = health
        end
        def to_s
         "#{@name} has a health of #{@health}."
            end
end


