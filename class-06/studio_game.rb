def time
    current_time = Time.new
    current_time.strftime("%I:%M:%S:%A")
end
def say_hello(name,health=100)
   
    "i am #{name.capitalize} with a health of #{health} as #{time}" 
end

puts say_hello("larry",60)
puts say_hello("curly",125)
puts say_hello("moe",100)
puts say_hello("shemp",90)

