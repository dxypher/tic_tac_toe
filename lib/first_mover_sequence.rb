module FirstMoverSequence
  def set_first_mover_optimal_sequence
    case @last_human_player_move #first move by human player
      when :a2, :a3
        optimal_move_sequence_1
      when :b1
        optimal_move_sequence_2
      when :b2
        optimal_move_sequence_3
      when :b3
        optimal_move_sequence_4
      when :c1
        optimal_move_sequence_5
      when :c2
        optimal_move_sequence_6
      when :c3
        optimal_move_sequence_7
    end
  end

  def optimal_move_sequence_1
    case @last_human_player_move
      when :a2, :a3
        @optimal_move_sequence = 1
        :b1
      when :c1
        :b2
    end
  end

  def optimal_move_sequence_2
    case @last_human_player_move
      when :b1
        @optimal_move_sequence = 2
        :a2
      when :a3
        :b2
    end
  end

  def optimal_move_sequence_3
    case @last_human_player_move
      when :b2
        @optimal_move_sequence = 3
        :a2
      when :a3
        :c1
      when :b1
        :b3
      when :c2
        :c3
      when :c3
        :c2
    end
  end

  def optimal_move_sequence_4
    case @last_human_player_move
      when :b3
        @optimal_move_sequence = 4
        :b2
      when :c3
        :b3
    end
  end

  def optimal_move_sequence_5
    case @last_human_player_move
      when :c1
        @optimal_move_sequence = 5
        :a2
      when :b3
        :b2
    end
  end

  def optimal_move_sequence_6
    case @last_human_player_move
      when :c2
        @optimal_move_sequence = 6
        :b3
      when :a2
        :b2
    end
  end

  def optimal_move_sequence_7
    case @last_human_player_move
      when :c3
        @optimal_move_sequence = 7
        :a3
      when :a2
        :c1
    end
  end
end