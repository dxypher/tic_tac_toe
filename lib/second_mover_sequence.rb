module SecondMoverSequence
  def set_second_mover_optimal_sequence
    case @last_human_player_move #first move by human player
      when :a1
        optimal_move_sequence_8
      when :a2
        optimal_move_sequence_9
      when :a3
        optimal_move_sequence_10
      when :b1
        optimal_move_sequence_11
      when :b2
        optimal_move_sequence_12
      when :b3
        optimal_move_sequence_13
      when :c1
        optimal_move_sequence_14
      when :c2
        optimal_move_sequence_15
      when :c3
        optimal_move_sequence_16
    end
  end

  def optimal_move_sequence_8
    case @last_human_player_move
      when :a1
        @optimal_move_sequence = 8
        :b2
      when :b3
        :c2
      when :c2
        :b3
      when :c3
        :a2
    end
  end

  def optimal_move_sequence_9
    case @last_human_player_move
      when :a2
        @optimal_move_sequence = 9
        :b2
      when :b1
        :a3
      when :b3, :c2
        :a1
      when :c1
        :b3
      when :c3
        :b1
    end
  end

  def optimal_move_sequence_10
    case @last_human_player_move
      when :a3
        @optimal_move_sequence = 10
        :b2
      when :b1
        :c2
      when :c1
        :a2
      when :c2
        :b1
    end
  end

  def optimal_move_sequence_11
    case @last_human_player_move
      when :b1
        @optimal_move_sequence = 11
        :b2
      when :a2
        :a3
      when :a3
        :c2
      when :b3, :c2
        :a1
      when :c3
        :a2
    end
  end

  def optimal_move_sequence_12
    case @last_human_player_move
      when :b2
        @optimal_move_sequence = 12
        :a1
      when :c3
        :a3
    end
  end

  def optimal_move_sequence_13
    case @last_human_player_move
      when :b3
        @optimal_move_sequence = 13
        :b2
      when :a1
        :c2
      when :a2, :b1
        :a1
      when :c1
        :a2
      when :c2
        :a3
    end
  end

  def optimal_move_sequence_14
    case @last_human_player_move
      when :c1
        @optimal_move_sequence = 14
        :b2
      when :a2
        :b3
      when :a3, :b3
        :a2
    end
  end

  def optimal_move_sequence_15
    case @last_human_player_move
      when :c2
        @optimal_move_sequence = 15
        :b2
      when :a2
        :a1
      when :a3
        :b1
      when :b1
        :a1
      when :b3
        :a3
    end
  end

  def optimal_move_sequence_16
    case @last_human_player_move
      when :c3
        @optimal_move_sequence = 16
        :b2
      when :a1, :b1
        :a2
      when :a2
        :b1        
    end
  end
end