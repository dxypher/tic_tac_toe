require './lib/computer_player'
require './lib/board'

describe 'ComputerPlayer' do
  context "Computer Player is 'O' mover in game" do
    let(:computer_player) {ComputerPlayer.new("computer")}
    let(:board) {Board.new}

    it "should make 1 the first move" do
      move = computer_player.get_next_computer_move(board, nil)
      move.should == 1
    end

    context "optimal_move_sequence_1" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_1'}

      it 'should return 4 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 2)
        computer_move.should == 4
      end

      it 'should return 4 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 3)
        computer_move.should == 4
      end

      it 'should return 5 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 7)
        computer_move.should == 5
      end
    end

    context "optimal_move_sequence_2" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_2'}

      it 'should return 2 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 4)
        computer_move.should == 2
      end

      it 'should return 5 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 3)
        computer_move.should == 5
      end
    end

    context "optimal_move_sequence_3" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_3'}

      it 'should return 2 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 5)
        computer_move.should == 2
      end

      it 'should return 7 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 3)
        computer_move.should == 7
      end

      it 'should return 6 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 4)
        computer_move.should == 6
      end

      it 'should return 9 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 8)
        computer_move.should == 9
      end

      it 'should return 8 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 9)
        computer_move.should == 8
      end
    end

    context "optimal_move_sequence_4" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_4'}

      it 'should return 5 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 6)
        computer_move.should == 5
      end

      it 'should return 6 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 9)
        computer_move.should == 6
      end
    end

    context "optimal_move_sequence_5" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_5'}

      it 'should return 2 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 7)
        computer_move.should == 2
      end

      it 'should return 5 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 6)
        computer_move.should == 5
      end
    end

    context "optimal_move_sequence_6" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_6'}

      it 'should return 6 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 8)
        computer_move.should == 6
      end

      it 'should return 5 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 2)
        computer_move.should == 5
      end
    end

    context "optimal_move_sequence_7" do
      before(:each) {computer_player.optimal_move_sequence = 'optimal_move_sequence_7'}

      it 'should return 3 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 9)
        computer_move.should == 3
      end

      it 'should return 7 as next computer move' do
        computer_move = computer_player.get_next_computer_move(board, 2)
        computer_move.should == 7
      end
    end
  end
end