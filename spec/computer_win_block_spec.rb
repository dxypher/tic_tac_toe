require './computer_player'

describe 'ComputerPlayer' do
  let(:computer_player) {ComputerPlayer.new}
  let(:first_player) {"player"}

  context "a winning or blocking move is possible" do
    it 'should return a winning move' do
      board = {a1: 'X', a2: 'O', a3: 'X', 
               b1: ' ', b2: 'O', b3: 'X', 
               c1: 'O', c2: ' ', c3: ' '}

      last_human_player_move = :b2

      move = computer_player.get_next_computer_move(board, last_human_player_move, first_player)
      move.should == :c3
    end

    it 'should return a blocking move' do
      board = {a1: 'X', a2: 'O', a3: 'X', 
               b1: 'O', b2: 'O', b3: ' ', 
               c1: ' ', c2: 'X', c3: ' '}

      last_human_player_move = :b2

      move = computer_player.get_next_computer_move(board, last_human_player_move, first_player)
      move.should == :b3
    end
  end
end