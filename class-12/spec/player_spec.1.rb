require_relative 'player'

describe Player do
    before do
        @initial_health = 150
       @player = Player.new("larry",@initial_health)
    
    
    end
    it "has a capitalize name" do
       

        @player.name.should == "Larry"
        end
        it " has an initial health" do
            

            @player.health.should == 150
            end

       

        it "has a string representation" do  
            
            @player.to_s.should == "I am Larry with the health of 150 and a score of 155."
          end

        it "compout a score as the sum of its health and length of name" do
            

            @player.score.should == (150 + 5)
            end

        it " increses health by 15 when got w00ted" do
            
            @player.w00t

            @player.health.should == @initial_health + 15

            end

        it "decreses health by 10 when got blamed " do 
            
            @player.blam

            @player.health.should == @initial_health - 10
            
        end
end