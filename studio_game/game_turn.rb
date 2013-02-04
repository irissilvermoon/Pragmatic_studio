require_relative 'die'
require_relative 'player'
require_relative 'treasure_trove'

module GameTurn
  def self.take_turn(player)
    die = Die.new
    number_rolled = die.roll
    
    case number_rolled
    when (1..2)
      player.blam
      puts "#{player.name} was blammed."
    when (3..4)
      puts "#{player.name} was skipped."
    else 
      player.w00t
      puts "#{player.name} was w00ted!"
    end

    treasure = TreasureTrove.random
    player.found_treasure(treasure)
  end
end
