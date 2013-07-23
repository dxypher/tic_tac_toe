class VictoryChecker
  THREE_CONSECUTIVE_Xs = ['X','X','X']
  THREE_CONSECUTIVE_Os = ['O','O','O']

  def initialize
  end

  def victory_or_continue_play(board)
    @board = board
    result_of_check = a_player_has_won? ? @winner : stalemate_or_continue_play
  end

  private
  def a_player_has_won?
    horizontal_victory? || vertical_victory? || diagonal_victory?
  end

  def stalemate_or_continue_play
    if @board.has_value?(" ")
      "continue play"
    else
      "It's a Draw!!!"
    end
  end

  def horizontal_victory?
    top = @board.values_at(:a1, :a2, :a3)
    mid = @board.values_at(:b1, :b2, :b3)
    bottom = @board.values_at(:c1, :c2, :c3)

    three_consecutive_x?(top, mid, bottom) || three_consecutive_o?(top, mid, bottom)
  end

  def vertical_victory?
    left = @board.values_at(:a1, :b1, :c1)
    mid = @board.values_at(:a2, :b2, :c2)
    right = @board.values_at(:a3, :b3, :c3)

    three_consecutive_x?(left, mid, right) || three_consecutive_o?(left, mid, right)
  end

  def diagonal_victory?
    left_across = @board.values_at(:a1, :b2, :c3)
    right_across = @board.values_at(:a3, :b2, :c1)

    three_consecutive_x?(left_across, right_across) || three_consecutive_o?(left_across, right_across)
  end

  def three_consecutive_x?(*rows)
    rows.each do |row|
      if row == THREE_CONSECUTIVE_Xs
        return @winner = "The Computer has Won!!!"
      end
    end
    return false
  end

  def three_consecutive_o?(*rows)
    rows.each do |row|
      if row == THREE_CONSECUTIVE_Os
        return @winner = "You've Won!!!"
      end
    end
    return false
  end
end

