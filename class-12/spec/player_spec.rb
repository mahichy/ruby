require_relative 'player'

describe Player do
    
    it "has a capitalize name" do
        player = Player.new("larry",125)

        player.name.should == "Larry"
        end
        it " has an initial health" do
            player = Player.new("larry",150)

            player.health.should == 150
            end

       
        it "has a string representation" do  
            player = Player.new("larry",150)
            player.to_s.should == "I am Larry with the health of 150 and a score of 155."
          end

        it "compout a score as the sum of its health and length of name" do
            player = Player.new("larry",150)

            player.score.should == (150 + 5)
            end

        it " increses health by 15 when got w00ted" do
            initial_health = 150
            player = Player.new("larry",initial_health)
            player.w00t

            player.health.should == initial_health + 15

            end

        it "decreses health by 10 when got blamed " do 
            initial_health = 150
            player = Player.new("larry",initial_health)
            player.blam

            player.health.should == initial_health - 10
            
        end
end