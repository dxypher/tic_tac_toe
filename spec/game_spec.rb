require "./lib/game"
require "./lib/computer_player"
require "./lib/victory_checker"

describe Game do
  describe '#new' do
    it "should initialize a Board" do
      Board.should_receive(:new).once
      Game.new
    end

    it "should initialize a user_interface" do
      UserInterface.should_receive(:new).once
      Game.new
    end

    it "should initialize a Computer Player" do
      ComputerPlayer.should_receive(:new).once
      Game.new
    end

    it "should initialize a Victory Checker" do
      VictoryChecker.should_receive(:new).once
      Game.new
    end
  end

  describe '#who_goes_first' do

    it "should choose the first player randomly" do
      first_player_array = []
      10.times do
        game = Game.new
        first_player_array << game.first_player
      end
      count = first_player_array.count('player')
      count.should_not == 10
    end
  end
end