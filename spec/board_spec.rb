require "./lib/board"
require "./lib/game"

describe 'Board' do
  describe '#make_move' do
    it "should place a mark in the box_number" do
      game = Game.new
      board = Board.new
      current_player = game.current_player(game.next_player)
      board.make_move(5, current_player)
      expect(board.grid[5]).to eq current_player.mark
    end 
  end
end