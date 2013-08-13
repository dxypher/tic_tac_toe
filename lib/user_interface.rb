class UserInterface

  def print_board(grid)
    console_board = ["   #{grid[1]}  |  #{grid[2]}  |  #{grid[3]}", 
                     "  _______________", 
                     "   #{grid[4]}  |  #{grid[5]}  |  #{grid[6]}",
                     "  _______________",
                     "   #{grid[7]}  |  #{grid[8]}  |  #{grid[9]}"]
    console_board.each do |row|
      puts row
    end
  end
end