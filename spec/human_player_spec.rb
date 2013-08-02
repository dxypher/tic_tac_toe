require "./lib/human_player"

describe "HumanPlayer" do
  it "should set the human player's mark to 'X'" do
    human = HumanPlayer.new("human")
    human.mark.should == "X"
  end

  it "should set the human player's mark to 'O'" do
    human = HumanPlayer.new("computer")
    human.mark.should == "O"
  end
end