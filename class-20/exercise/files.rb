require_relative 'player'

# File.read_line("players.csv").each do |line|
#     name, health = line.split(",")
#     player = Player.new(name, Integer(health))
#     puts player
# end

player1 = Player.new("larry",25)
player2 = Player.new("moe",45)
player3 = Player.new("curly",35)

players = [player1, player2, player3]

# File.open("player_rankings.csv", "w") do |file|
#    players.sort.each do |player|
#     file.puts "#{player.name}, #{player.health}"
#     end 
# end