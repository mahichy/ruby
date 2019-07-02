class Player
    attr_reader :name
    attr_accessor :health
    def initialize(name,health=100)
        @name = name.capitalize
        @health = health
        end 
        def score
            @health + @name.length
            end
            def to_s
                "I am #{@name} with the health of #{@health} and a score #{score}"
                end
                def w00t
                    @health +=15
                    puts "#{@name} got w00ted."
                    end
                    def blam
                        @health -=10
                        puts "#{@name} got blamed."
                        end

end

if __FILE__ ==$0
    player = Player.new("moe")
    puts player.name
    puts player.health
    player.w00t
    puts player.health
    player.blam
    puts player.health
    puts player
    end