# def movie_listening
#     puts "movie : Goonies"
# end
# movie_listening

# def movie_listening
#      "movie : Goonies"
# end
# puts movie_listening

def weekday
    current_time = Time.new
    current_time.strftime("%A")
end
def movie_listening(tittle,rank = 0)
    today = weekday
       "#{today} : #{tittle.capitalize} has a rank of #{rank}."
end
puts movie_listening("goonies", 10)
puts movie_listening("ghostbusters", 9)

a_title = "goldfinger"
puts movie_listening (a_title)

