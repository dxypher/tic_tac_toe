require './lib/computer_player'

describe 'ComputerPlayer' do
  context "Computer Player is second mover in game" do
    let(:computer_player) {ComputerPlayer.new}
    before(:each) do
      @board = Board.new

      @computer_moves = []
      @first_player = "player"
    end

    it 'should return optimal_move_sequence_8 moves' do
      player_moves = [1, 6, 8, 9]
      expected_computer_moves = [5, 8, 6, 2]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_9 moves' do
      player_moves = [2, 7, 8, 4, 9]
      expected_computer_moves = [5, 6, 1, 3, 4]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_10 moves' do
      player_moves = [3, 4, 7, 8]
      expected_computer_moves = [5, 8, 2, 4]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_11 moves' do
      player_moves = [4, 2, 3, 8, 9]
      expected_computer_moves = [5, 3, 8, 1, 2]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_12 moves' do
      player_moves = [5, 9]
      expected_computer_moves = [1, 3]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_13 moves' do
      player_moves = [6, 8, 7, 1, 2]
      expected_computer_moves = [5, 3, 2, 8, 1]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_14 moves' do
      player_moves = [7, 2, 6]
      expected_computer_moves = [5, 6, 2]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_15 moves' do
      player_moves = [8, 2, 3, 4, 6]
      expected_computer_moves = [5, 1, 4, 1, 3]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_16 moves' do
      player_moves = [9, 4, 2]
      expected_computer_moves = [5, 2, 4]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end
  end
end