class Player

  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health  
  end

  def strong?
    @health > 100
  end

  def score
    @name.length + @health
  end

  def blam
    @health -= 10
  end

  def w00t
    @health += 15
  end

  def to_s
    "Hello, my name is #{@name} and I have a health of #{@health} and a score of #{score}."
  end

  def <=>(other)
    other.score <=> score
  end
end

if __FILE__ == $0
  player = Player.new("moe")

  puts player.name
  puts player.health
  
  player.w00t
  
  puts player.health
  
  player.blam
  
  puts player.health
end

