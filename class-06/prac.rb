def weekend
    current_time = Time.new
    current_time.strftime("%A")
end

def welcome(name,age= 0)
    today = weekend
    "my name is #{name.upcase} and age is #{age} and today is #{today}."
end
puts welcome("mahi",21)

def say_hello(name,age=0)
    " i am #{name.capitalize} with a health of #{age}"
end
puts say_hello("larry",60)
puts say_hello("curly",125)
puts say_hello("moe",100)
puts say_hello("shemp",90)