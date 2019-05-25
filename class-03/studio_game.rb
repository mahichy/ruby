name1 = 'larry'
health1 = 60

puts name1 + '\'s' + ' health is ' + health1.to_s

puts "#{name1}'s health is #{health1}"

puts "#{name1}'s health is #{health1 * 3}"

puts "#{name1}'s health is #{health1 / 9}"
puts "#{name1}'s health is #{health1 / 9.0}"

puts "Players:\n\t larry \n\t curly \n\t moe"

player1 = "larry"
player2 = "curly"
player3 = "moe"

puts "Players:\n\t#{player1}\n\t #{player2}\n\t #{player3}"


# bonus
project1 = "project ABC"
project2 = "project LMN"
project3 = "project XYZ"
funding  = 1000

puts "Project: #{project1} has $#{funding} in funding"
puts "Project:\n\t#{project1}\n\t#{project2}\n\t#{project3}"