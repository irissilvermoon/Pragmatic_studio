require_relative 'player'
require_relative 'treasure_trove'

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
    @player.to_s.should == "Hello, my name is Larry and I have a health of 100 and a score of 105."
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

  context "created default health" do
    before do
      @player = Player.new("larry")
    end

    it "has a health of 100" do
      @player.health.should == 100
    end
  end

  context "with a health greater than 100" do
    before do
      @player = Player.new("larry", 150)
    end

    it "has a rating of strong if health is 100 or greater" do  
      @player.should be_strong
    end
  end

  context "with a health of 100 or less" do
    before do
      @player = Player.new("larry", 75)
    end

    it "is wimpy if health is equal to or less than 100" do
      @player.should_not be_strong
    end
  end

  context "in a collection of players" do
    before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
    end

    it "is sorted by decreasing score" do
      @players.sort.should == [@player3, @player2, @player1]
    end
  end

  it "computes points as the sum of all treasure points" do
    @player.points.should == 0

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 50

    @player.found_treasure(Treasure.new(:crowbar, 400))

    @player.points.should == 450

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 500
  end
end