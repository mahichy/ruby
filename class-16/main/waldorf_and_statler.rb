module WaldorfAndStatler

    def self.roll_die
        rand(1..6) 
    end


    def self.review(m)
        number_rolled = roll_die
        case number_rolled
        when 1..2
            m.thums_down
            puts "#{m.title} got a thums down."
        when  3..4
            puts "#{m.title} was skipped."
        else
        m.thums_up
            puts "#{m.title} got a thums up !"
        end
    end
end
