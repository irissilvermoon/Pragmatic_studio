class Player

  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health  
  end

  def score
    @name.length + @health
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def to_s
    "Hello, my name is #{@name} and I have a health of #{@health} and a score of of #{score}"
  end
end


player1 = Player.new("moe")

player2 = Player.new("Larry", 60)

player3 = Player.new("Curly", 125)

player4 = Player.new("Shemp", 90)

players = [player1, player2, player3]
puts "There are #{players.count} players in the game"

players.each do |player|
  player.health
end

players.each do |player|
  player.blam
  player.blam
  player.w00t
  puts player
end

players.pop
players.push(player4)
puts players



