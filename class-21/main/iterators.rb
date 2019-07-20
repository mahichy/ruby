# def once
#     puts "before yield"
#     yield 
#     puts "after yield"
# end
# once {puts "Runing your block"}

# def twice
#     puts "before yield"
#     yield
#     yield 
#     puts "after yield"
# end
# twice {puts "Runing your block"}

# def three_times
#     puts "Ready"
#     yield(1)
#     puts "set"
#     yield (2)
#     puts "GO!"
#     yield (3)
# end
# three_times {|number| puts number }

# def three_times
#     puts "Ready"
#     yield(1)
#     puts "set"
#     yield (2)
#     puts "GO!"
#     yield (3)
# end
# three_times {|number| puts number * 2}

# def three_times
#     puts "Ready"
#     yield(1)
#     puts "set"
#     yield (2)
#     puts "GO!"
#     yield (3)
# end
# three_times {|number| puts number * number }

# def compute
#     puts yield    
# end
# compute do 
#     "Hello"      
# end

# def compute
#     puts yield    
# end
# compute do 
#     "Hello" 
#     3.14     
# end

# def compute
#     puts yield    
# end
# compute do 
#     "Hello"  
#     3.14
#     7    
# end

# def compute
#     puts yield    
# end
# compute 

# def compute
#     if block_given?
#     puts yield    
#     else
#         puts "Does not compute!"
#         end
# end
# compute

# def compute
#     if block_given?
#     puts yield    
#     else
#         puts "Does not compute!"
#         end
# end
# compute {3.14}

# numbers = (1..10).to_a
# puts numbers.select {|n| n.even?}

numbers = (1..10).to_a
# puts numbers.select {|n| n.odd?}


def my_select(array)
    results = []
    array.each do |element|
        results << element if yield (element)
    end
    results 
    end
    puts my_select(numbers){|n| n.odd?}