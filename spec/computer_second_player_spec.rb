require './computer_player'

describe 'ComputerPlayer' do
  context "Computer Player is second mover in game" do
    let(:computer_player) {ComputerPlayer.new}
    before(:each) do
      @board = {a1: ' ', a2: ' ', a3: ' ', 
                b1: ' ', b2: ' ', b3: ' ', 
                c1: ' ', c2: ' ', c3: ' '}

      @computer_moves = []
      @first_player = "player"
    end

    it 'should return optimal_move_sequence_8 moves' do
      player_moves = [:a1, :b3, :c2, :c3]
      expected_computer_moves = [:b2, :c2, :b3, :a2]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_9 moves' do
      player_moves = [:a2, :c1, :c2, :b1, :c3]
      expected_computer_moves = [:b2, :b3, :a1, :a3, :b1]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_10 moves' do
      player_moves = [:a3, :b1, :c1, :c2]
      expected_computer_moves = [:b2, :c2, :a2, :b1]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_11 moves' do
      player_moves = [:b1, :a2, :a3, :c2, :c3]
      expected_computer_moves = [:b2, :a3, :c2, :a1, :a2]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_12 moves' do
      player_moves = [:b2, :c3]
      expected_computer_moves = [:a1, :a3]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_13 moves' do
      player_moves = [:b3, :c2, :c1, :a1, :a2]
      expected_computer_moves = [:b2, :a3, :a2, :c2, :a1]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_14 moves' do
      player_moves = [:c1, :a2, :b3]
      expected_computer_moves = [:b2, :b3, :a2]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_15 moves' do
      player_moves = [:c2, :a2, :a3, :b1, :b3]
      expected_computer_moves = [:b2, :a1, :b1, :a1, :a3]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_16 moves' do
      player_moves = [:c3, :b1, :a2]
      expected_computer_moves = [:b2, :a2, :b1]

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end
  end
end