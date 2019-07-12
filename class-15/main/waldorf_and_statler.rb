module WaldorfAndStatler 
    def self.roll_die
      rand(1..6)
    end
    
    def self.review(m)
      case roll_die
      when 1..2
        m.thumbs_down
        puts "#{m.title} got a thumbs down."
      when 3..4
        puts "#{m.title} was skipped."
      else
        m.thumbs_up
        puts "#{m.title} got a thumbs up!"
      end
    end
  end
  