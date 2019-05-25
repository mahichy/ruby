name1 = "larry"
health1 = 60

puts "#{name1.capitalize} has a health of #{health1}"

name2 = "curly"
health2 = 125

puts " #{name2.upcase} has a health of #{health2}"

health2 = health1

puts "#{name2.upcase} has a health of #{health2}"

health1 = 30
puts"#{name1.capitalize} has a health of #{health1}"
puts "#{name2.upcase} has a health of #{health2}"


name3 = "moe"
health3 = 100

text = "#{name3.capitalize} has a health of #{health3}"
puts text.center(50,'.')

current_time = Time.new
formated_time = current_time.strftime("%A %m %d %y at %I:%m%p ")
puts "The game start on thursday #{formated_time}"

