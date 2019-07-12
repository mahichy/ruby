require_relative 'treasure_trove'

describe Treasure do
    before do
        @treasure = Treasure.new(:hammer, 50)    
    end

    it " has a name attribute " do
        @treasure.name.should == :hammer
    end
    
    it "has a point attribute" do
        @treasure.points.should == 50
    end

    describe TreasureTrove do
        it " has a six treasures " do
            TreasureTrove::TREASURE.size.should == 6
            end
            it "has a pie worth 5 point" do
                TreasureTrove::TREASURE[0].should == Treasure.new(:pie,5)
                end
                it "has a bottle worth 25 point" do
                    TreasureTrove::TREASURE[1].should == Treasure.new(:bottle, 25)
                    end
                    it "has a hammer worth 50 point" do
                        TreasureTrove::TREASURE[2].should == Treasure.new(:hammer, 50) 
                        end
                        it "has a skillet worth 100 point" do
                            TreasureTrove::TREASURE[3].should == Treasure.new(:skillet, 100)
                            end
                            it "has a worth bromstick 200 point" do
                                TreasureTrove::TREASURE[4].should == Treasure.new(:broomstick, 200)
                                end
                                it "has a woth crowbar 400 point" do
                                    TreasureTrove::TREASURE[5].should == Treasure.new(:crowbar, 400)
                                    end
                                    it "return a random treasure" do
                                        treasure = TreasureTrove.random

                                        TreasureTrove::TREASURE.should include(treasure)
                                        end

    end

end