class Calculator
    def initialize(a,b)
        @a=a
        @b=b
    end
    def add
        @a+@b
        end
        
        def subtract
            @a-@b
        end


end

cel = Calculator.new(20 ,11)
puts cel.add
puts cel.subtract