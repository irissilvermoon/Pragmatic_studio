require_relative 'die'
require_relative 'player'

module GameTurn
  def self.take_turn(player)
    die = Die.new
    number_rolled = die.roll
     case number_rolled
     when (1..2)
      player.blam
      puts "#{player} was blammed."
     when (3..4)
      puts "#{player} was skipped."
     else 
      player.w00t
      puts "#{player} was w00ted!"
    end
  end
end
