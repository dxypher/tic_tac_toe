require './lib/computer_player'
require './lib/board'

describe 'ComputerPlayer' do
  let(:computer_player) {ComputerPlayer.new("human")}
  let(:first_player) {"human"}

  context "a winning or blocking move is possible" do
    it 'should return a winning move' do
      board = Board.new
      board.grid = {1 => 'X', 2 => 'O', 3 => 'X', 
               4 => ' ', 5 => 'O', 6 => 'X', 
               7 => 'O', 8 => ' ', 9 => ' '}

      last_human_player_move = 5

      move = computer_player.get_next_computer_move(board, last_human_player_move)
      move.should == 8
    end

    it 'should return a blocking move' do
      board = Board.new
      board.grid = {1 => 'X', 2 => 'O', 3 => 'X', 
               4 => 'O', 5 => 'O', 6 => ' ', 
               7 => ' ', 8 => 'X', 9 => ' '}

      last_human_player_move = 5

      move = computer_player.get_next_computer_move(board, last_human_player_move)
      move.should == 6
    end
  end
end