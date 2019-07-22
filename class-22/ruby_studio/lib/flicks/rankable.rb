
module Flicks
    module Rankable
        def thums_up
            self.rank +=1
            end
            def thums_down
            self.rank -=1
            end

            def hit?
                self.rank >= 10
            end
            def status
                hit? ? "Hit" : "flop"
                # if hit?
                #     "Hit"           
                # else
                #     "flop"
                # end

            end

            def normalized_rank
            self.rank / 10
            end
        

            def <=>(other)
                other.rank <=> self.rank  
            end
    end
end