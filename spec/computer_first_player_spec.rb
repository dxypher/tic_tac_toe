require './computer_player'

describe 'ComputerPlayer' do
  context "Computer Player is first mover in game" do
    let(:computer_player) {ComputerPlayer.new}
    before(:each) do
      @board = {a1: ' ', a2: ' ', a3: ' ', 
                b1: ' ', b2: ' ', b3: ' ', 
                c1: ' ', c2: ' ', c3: ' '}

      @computer_moves = []
      @first_player = "computer"
    end

    it "should make :a1 the first move" do
      move = computer_player.get_next_computer_move(@board, nil, @first_player)
      move.should == :a1
    end

    it 'should return optimal_move_sequence_1 moves' do
      player_moves = [:a2, :c1]
      expected_computer_moves = [:b1, :b2]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_2 moves' do
      player_moves = [:b1, :a3]
      expected_computer_moves = [:a2, :b2]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_3 moves' do
      player_moves = [:b2, :a3, :b1, :c2, :c3]
      expected_computer_moves = [:a2, :c1, :b3, :c3, :c2]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_4 moves' do
      player_moves = [:b3, :c3]
      expected_computer_moves = [:b2, :b3]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_5 moves' do
      player_moves = [:c1, :b3]
      expected_computer_moves = [:a2, :b2]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_6 moves' do
      player_moves = [:c2, :a2]
      expected_computer_moves = [:b3, :b2]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end

    it 'should return optimal_move_sequence_7 moves' do
      player_moves = [:c3, :a2]
      expected_computer_moves = [:a3, :c1]

      computer_player.get_next_computer_move(@board, nil, @first_player)

      player_moves.each do |player_move|
        @computer_moves << computer_player.get_next_computer_move(@board, player_move, @first_player)
      end
      @computer_moves.should == expected_computer_moves
    end
  end
end