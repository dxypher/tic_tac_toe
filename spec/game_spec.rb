require "./lib/game"
require "./lib/computer_player"
require "./lib/victory_checker"

describe Game do
  describe '#new' do
    it "should initialize with a empty board" do
      game = Game.new
      game.board.values.count(" ").should == 9
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
    it "should return the first player" do
      game = Game.new
      first_player = game.send(:who_goes_first)
      puts first_player
      first_player.should be_a(String)
    end

    it "should choose the first player randomly" do
      game = Game.new
      first_player_array = []
      10.times do
        first_player_array << game.send(:who_goes_first)
      end
      count = first_player_array.count('player')
      count.should_not == 10
    end
  end

  describe '#make_move' do
    it "should place a mark in the box_number" do
      game = Game.new
      board = game.send(:make_move, :b2)
      game.board[:b2].should_not == " "
    end
  end
end