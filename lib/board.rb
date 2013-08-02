class Board
  attr_accessor :grid 

  def initialize
    @grid = {1 => ' ', 2 => ' ', 3 => ' ', 
             4 => ' ', 5 => ' ', 6 => ' ', 
             7 => ' ', 8 => ' ', 9 => ' '}
  end

  def print_board
    puts "   #{grid[1]}  |  #{grid[2]}  |  #{grid[3]}"
    puts "  _______________"
    puts "   #{grid[4]}  |  #{grid[5]}  |  #{grid[6]}"
    puts "  _______________"
    puts "   #{grid[7]}  |  #{grid[8]}  |  #{grid[9]}"
  end

  def make_move(box_number, current_player)
    grid[box_number] = current_player.mark
  end
end