require './lib/computer_player'

describe 'ComputerPlayer' do
  context "Computer Player is first mover in game" do
    let(:computer_player) {ComputerPlayer.new}
    before(:each) do
      @board = Board.new

      @computer_moves = []
      @first_player = "computer"
    end

    it "should make 1 the first move" do
      move = computer_player.get_next_computer_move(@board, nil, @first_player)
      move.should == 1
    end

    it 'should return optimal_move_sequence_1 moves' do
      player_moves = [2, 7]
      expected_computer_moves = [4, 5]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_2 moves' do
      player_moves = [4, 3]
      expected_computer_moves = [2, 5]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_3 moves' do
      player_moves = [5, 3, 4, 8, 9]
      expected_computer_moves = [2, 7, 6, 9, 8]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_4 moves' do
      player_moves = [6, 9]
      expected_computer_moves = [5, 6]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_5 moves' do
      player_moves = [7, 6]
      expected_computer_moves = [2, 5]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_6 moves' do
      player_moves = [8, 2]
      expected_computer_moves = [6, 5]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_7 moves' do
      player_moves = [9, 2]
      expected_computer_moves = [3, 7]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end
  end
end