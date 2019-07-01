require_relative 'movie'

describe Movie do
    it "has a capitalize title" do
        movie = Movie.new("goonies",10)


        movie.title.should == "Goonies" 
    end

    it "has an initial rank" do 
        movie = Movie.new("goonies",10)

        movie.rank.should == 10
    end

    it "has a string representation" do
        movie = Movie.new("goonies", 10)
        
        movie.to_s.should == "Goonies has a rank 10 (Hit)"
    end
        
    it "increses rank by 1 when given a thums up" do
        initial_rank = 10
        movie = Movie.new("goonies",initial_rank)

        movie.thums_up
        movie.rank.should == initial_rank +1
    end


    it "decreses rank by 1 when given a thums down" do
    initial_rank = 10
    movie = Movie.new("goonies", initial_rank)
    
    movie.thums_down
    movie.rank.should == initial_rank - 1
    end
end