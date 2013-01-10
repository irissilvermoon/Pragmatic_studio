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

puts player1.health
puts player2.health
puts player3.health

player2.name = ("Lawrence")
puts player2

puts player1
puts player2
puts player3

player3.blam
player2.w00t

