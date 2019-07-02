require_relative 'player'

describe Player do
    before do
        @initial_health = 150
        @player = Player.new("Larry", @initial_health)
        end
        it "has a capitalize name" do
            @player.name.should == "Larry" 
        end
        it "has a initial health" do
            @player.health.should == 150
        end
        it "has a string representation" do 
        @player.to_s.should == "I am Larry with the health of 150 and a score 155"
        end
        it "computes the score as the sum of its health length of name" do
            @player.score.should == (150 + 5)
        end
        it "increses health of 15 when got w00ted" do
            @player.w00t
            
            @player.health.should == @initial_health + 15
            end
        it "dicreses health of 10 when got blamed" do
            @player.blam

            @player.health.should == @initial_health - 10
            
        end
        context "with a health grater then 100" do
            before do
                @player = Player.new("larry", 150)
                end
                it "is strong" do 
                    @player.health.should == 150
                    end
        end
        context "with a health of 100 or less " do
            before do
                @player = Player.new("larry",100)
                end 
                it "is wimpy" do
                    @player.health.should == 100
                end  
        end
end