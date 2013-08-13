class Board
  attr_accessor :grid 

  def initialize
    @grid = {1 => ' ', 2 => ' ', 3 => ' ', 
             4 => ' ', 5 => ' ', 6 => ' ', 
             7 => ' ', 8 => ' ', 9 => ' '}
  end

  def make_move(box_number, current_player)
    grid[box_number] = current_player.mark
  end
end