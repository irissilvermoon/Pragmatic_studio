require_relative 'treasure_trove'

describe Treasure do
  before do
    @treasure = Treasure.new(:hammer, 50)
  end

  it "has a name attribute" do
    @treasure.name.should == :hammer
  end

  it "has points" do
    @treasure.points.should == 50
  end
end

describe TreasureTrove do
  it "has 6 treasures" do
    TreasureTrove::TREASURES.count.should == 6
  end

  it "has pie worth 5 points" do
    TreasureTrove::TREASURES[0].should == Treasure.new(:pie, 5)
  end

  it "has a bottle worth 25 points" do
    TreasureTrove::TREASURES[1].should == Treasure.new(:bottle, 25)
  end

  it "has a hammer worth 50 points" do
    TreasureTrove::TREASURES[2].should == Treasure.new(:hammer, 50)
  end

  it "has a skillet worth 100 points" do
    TreasureTrove::TREASURES[3].should == Treasure.new(:skillet, 100)
  end

  it "has a broomstick worth 200 points" do
    TreasureTrove::TREASURES[4].should == Treasure.new(:broomstick, 200)
  end

  it "has a crowbar worth 400 points" do
    TreasureTrove::TREASURES[5].should == Treasure.new(:crowbar, 400)
  end
end

