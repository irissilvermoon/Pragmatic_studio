require_relative 'game'
require_relative 'player'


player1 = Player.new("moe")

player2 = Player.new("Larry", 60)

player3 = Player.new("Curly", 125)

player4 = Player.new("Shemp", 90)

player5 = Player.new("Alvin", 50)


knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(2)

knuckleheads.print_stats





