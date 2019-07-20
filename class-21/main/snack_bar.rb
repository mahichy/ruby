# class Snack
#     attr_reader :name, :carbs

#     def initialize(name,carbs)
#         @name = name
#         @carbs = carbs
#     end

# end
# popcorn = Snack.new("popcorn", 20)
# puts popcorn.name
# puts popcorn.carbs

Snack = Struct.new(:name, :carbs)

popcorn = Snack.new("popcorn", 20)
puts popcorn.name
puts popcorn.carbs

candy = Snack.new("candy", 15)
puts candy.name
puts candy.carbs