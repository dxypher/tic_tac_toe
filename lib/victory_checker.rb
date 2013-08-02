class VictoryChecker
  THREE_CONSECUTIVE_Xs = ['X','X','X']
  THREE_CONSECUTIVE_Os = ['O','O','O']

  def victory_or_continue_play(board)
    @grid = board.grid
    result_of_check = a_player_has_won? ? @winner : stalemate_or_continue_play
  end

  private
  def a_player_has_won?
    horizontal_victory? || vertical_victory? || diagonal_victory?
  end

  def stalemate_or_continue_play #no or methods, break into two seperate methods
    if @grid.has_value?(" ")
      "continue play"
    else
      "It's a Draw!!!"
    end
  end

  def horizontal_victory?
    top = @grid.values_at(1, 2, 3)
    mid = @grid.values_at(4, 5, 6)
    bottom = @grid.values_at(7, 8, 9)

    three_consecutive_x?(top, mid, bottom) || three_consecutive_o?(top, mid, bottom)
  end

  def vertical_victory?
    left = @grid.values_at(1, 4, 7)
    mid = @grid.values_at(2, 5, 8)
    right = @grid.values_at(3, 6, 9)

    three_consecutive_x?(left, mid, right) || three_consecutive_o?(left, mid, right)
  end

  def diagonal_victory?
    left_across = @grid.values_at(1, 5, 9)
    right_across = @grid.values_at(3, 5, 7)

    three_consecutive_x?(left_across, right_across) || three_consecutive_o?(left_across, right_across)
  end

  def three_consecutive_x?(*rows)
    rows.each do |row|
      if row == THREE_CONSECUTIVE_Xs
        return @winner = "X"
      end
    end
    return false
  end

  def three_consecutive_o?(*rows)
    rows.each do |row|
      if row == THREE_CONSECUTIVE_Os
        return @winner = "O"
      end
    end
    return false
  end
end

