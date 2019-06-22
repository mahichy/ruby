require_relative 'player'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
players =[player1,player2,player3]
puts players

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play