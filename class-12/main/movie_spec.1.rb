require_relative 'movie'

describe Movie do

    before do
        @initial_rank = 10
        @movie = Movie.new("goonies",@initial_rank)
        end


    it "has a capitalize title" do
        


        @movie.title.should == "Goonies" 
    end

    it "has an initial rank" do 
       

        @movie.rank.should == 10
    end

    it "has a string representation" do
       
        
        @movie.to_s.should == "Goonies has a rank 10"
    end
        
    it "increses rank by 1 when given a thums up" do
        

        @movie.thums_up
        @movie.rank.should == @initial_rank +1
    end


    it "decreses rank by 1 when given a thums down" do
  
    
    @movie.thums_down
    @movie.rank.should == @initial_rank - 1
    end

    context "created with a default rank" do
        before do
            @movie = Movie.new("goonies")    
        end 
        it "has a rank of 0" do
        
            @movie.rank.should == 0
        end
        end
end