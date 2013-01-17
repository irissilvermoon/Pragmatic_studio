require_relative 'player'

describe Player do

  before do
    @initial_health = 100
    @player = Player.new("larry", @initial_health)
    $stdout = StringIO.new
  end

  it "has a capitalized name" do
    @player.name.should == "Larry"
  end

  it "has an initial health" do
    @initial_health.should == 100
  end

  it "has a string representation" do
    @player.to_s.should == "Hello, my name is Larry and I have a health of 100 and a score of of 105"
  end

  it "computes a score as the sum of its health and length of name" do
    @player.score

    @player.score.should == "Larry".length + @initial_health
  end

  it "increases health by 15 when w00ted" do

    @player.w00t

    @player.health.should == @initial_health + 15
  end

  it "decreases health by 10 when blammed" do
    @player.blam

    @player.health.should == @initial_health - 10
  end

end