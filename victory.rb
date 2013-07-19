module VictoryChecker
  X = ['X','X','X']
  O = ['O','O','O']

  def continue?
    result = board.map {|key, value| value.has_value?(0)}
    if self.winner == nil && result.include?(true)
      # call a method to get next move from computer or player
    else
      self.winner = "Stalemate"
      return false
    end
  end

  def victory
    if hor_vic?
      puts winner
    elsif ver_vic?
      puts winner
    elsif diag_vic?
      puts winner
    else
      self.play
    end
  end

  def hor_vic?
    top = board.values_at(:a1, :a2, :a3)
    mid = board.values_at(:b1, :b2, :b3)
    bottom = board.values_at(:c1, :c2, :c3)

    if top == X || mid == X || bottom == X
      self.winner = "x wins"
    elsif top == O || mid == O || bottom == O
      self.winner = "o wins"
    else
      false
    end
  end

  def ver_vic?
    left = board.values_at(:a1, :b1, :c1)
    mid = board.values_at(:a2, :b2, :c2)
    right = board.values_at(:a3, :b3, :c3O)

    if left == X || mid == X || right == X
      self.winner = "x wins"
    elsif left == O || mid == O || right == O
      self.winner = "o wins"
    else
      false
    end
  end

  def diag_vic?
    left_across = board.values_at(:a1, :b2, :c3)
    right_across = board.values_at(:a3, :b2, :c1)

    if left_across == X || right_across == X
      self.winner = "x wins"
    elsif left_across == O || right_across == O
      self.winner = "o wins"
    else
      false
    end
  end
end

