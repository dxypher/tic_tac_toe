require './lib/computer_player'
require './lib/human_player'
require './lib/o_move_sequence'
require './lib/board'

describe 'OMoveSequence' do
  context "Computer Player is 'O' mover in game" do
    let(:computer_player) {ComputerPlayer.new("human")}
    let(:board) {Board.new}

    context "First move for computer" do
      it 'should return 5 as first computer move if blank' do
        computer_move = computer_player.get_next_computer_move(board, 1)
        computer_move.should == 5
      end

      it 'should return 1 as first computer move if 5 was human first move' do
        board.grid[5] = 'X'
        computer_move = computer_player.get_next_computer_move(board, 5)
        computer_move.should == 1
      end

      it "should set optimal_move_sequence_8" do
        computer_player.get_next_computer_move(board, 1)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_8"
      end

      it "should set optimal_move_sequence_9" do
        computer_player.get_next_computer_move(board, 2)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_9"
      end

      it "should set optimal_move_sequence_10" do
        computer_player.get_next_computer_move(board, 3)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_10"
      end

      it "should set optimal_move_sequence_11" do
        computer_player.get_next_computer_move(board, 4)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_11"
      end

      it "should set optimal_move_sequence_12" do
        computer_player.get_next_computer_move(board, 5)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_12"
      end

      it "should set optimal_move_sequence_13" do
        computer_player.get_next_computer_move(board, 6)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_13"
      end

      it "should set optimal_move_sequence_14" do
        computer_player.get_next_computer_move(board, 7)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_14"
      end

      it "should set optimal_move_sequence_15" do
        computer_player.get_next_computer_move(board, 8)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_15"
      end

      it "should set optimal_move_sequence_16" do
        computer_player.get_next_computer_move(board, 9)
        computer_player.optimal_move_sequence.should == "optimal_move_sequence_16"
      end
    end

    context "optimal_move_sequence_8" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_8'}

      it 'should return 8 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 6)
        computer_move.should == 8
      end

      it 'should return 6 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 8)
        computer_move.should == 6
      end

      it 'should return 2 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 9)
        computer_move.should == 2
      end
    end

    context "optimal_move_sequence_9" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_9'}

      it "should return 3 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 4)
        computer_move.should == 3
      end

      it "should return 1 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 6)
        computer_move.should == 1
      end

      it "should return 1 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 8)
        computer_move.should == 1
      end

      it "should return 6 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 7)
        computer_move.should == 6
      end

      it "should return 4 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 9)
        computer_move.should == 4
      end
    end

    context "optimal_move_sequence_10" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_10'}

      it "should return 8 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 4)
        computer_move.should == 8
      end

      it "should return 2 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 7)
        computer_move.should == 2
      end

      it "should return 4 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 8)
        computer_move.should == 4
      end
    end

    context "optimal_move_sequence_11" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_11'}

      it "should return 3 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 2)
        computer_move.should == 3
      end

      it "should return 8 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 3)
        computer_move.should == 8
      end

      it "should return 1 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 8)
        computer_move.should == 1
      end

      it "should return 2 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 9)
        computer_move.should == 2
      end
    end

    context "optimal_move_sequence_12" do
      it "should return 3 as next computer move" do
        computer_player.optimal_move_sequence = 'optimal_move_sequence_12'
        computer_move = computer_player.get_next_computer_move(board, 9)
        computer_move.should == 3
      end
    end

    context "optimal_move_sequence_13" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_13'}

      it "should return 3 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 8)
        computer_move.should == 3
      end

      it "should return 2 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 7)
        computer_move.should == 2
      end

      it "should return 8 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 1)
        computer_move.should == 8
      end

      it "should return 1 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 2)
        computer_move.should == 1
      end
    end

    context "optimal_move_sequence_14" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_14'}

      it "should return 6 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 2)
        computer_move.should == 6
      end

      it "should return 2 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 6)
        computer_move.should == 2
      end
    end

    context "optimal_move_sequence_15" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_15'}

      it "should return 1 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 2)
        computer_move.should == 1
      end

      it "should return 4 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 3)
        computer_move.should == 4
      end

      it "should return 1 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 4)
        computer_move.should == 1
      end

      it "should return 3 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 6)
        computer_move.should == 3
      end
    end

    context "optimal_move_sequence_16" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_16'}

      it "should return 2 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 4)
        computer_move.should == 2
      end

      it "should return 4 as next computer move" do
        computer_move = computer_player.get_next_computer_move(board, 2)
        computer_move.should == 4
      end
    end
  end
end