require "./lib/board"
require "./lib/game"

describe 'Board' do
  describe '#make_move' do
    it "should place a mark in the box_number" do
      game = Game.new
      board = Board.new
      board.make_move(5, game.first_player, game.next_player)
      board.grid[5].should_not == " "
    end 
  end
end