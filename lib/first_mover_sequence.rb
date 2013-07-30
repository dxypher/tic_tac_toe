module FirstMoverSequence
  def set_first_mover_optimal_sequence
    case @last_human_player_move #first move by human player
      when 2, 3
        optimal_move_sequence_1
      when 4
        optimal_move_sequence_2
      when 5
        optimal_move_sequence_3
      when 6
        optimal_move_sequence_4
      when 7
        optimal_move_sequence_5
      when 8
        optimal_move_sequence_6
      when 9
        optimal_move_sequence_7
    end
  end

  def optimal_move_sequence_1
    case @last_human_player_move
      when 2, 3
        @optimal_move_sequence = 1
        4
      when 7
        5
    end
  end

  def optimal_move_sequence_2
    case @last_human_player_move
      when 4
        @optimal_move_sequence = 2
        2
      when 3
        5
    end
  end

  def optimal_move_sequence_3
    case @last_human_player_move
      when 5
        @optimal_move_sequence = 3
        2
      when 3
        7
      when 4
        6
      when 8
        9
      when 9
        8
    end
  end

  def optimal_move_sequence_4
    case @last_human_player_move
      when 6
        @optimal_move_sequence = 4
        5
      when 9
        6
    end
  end

  def optimal_move_sequence_5
    case @last_human_player_move
      when 7
        @optimal_move_sequence = 5
        2
      when 6
        5
    end
  end

  def optimal_move_sequence_6
    case @last_human_player_move
      when 8
        @optimal_move_sequence = 6
        6
      when 2
        5
    end
  end

  def optimal_move_sequence_7
    case @last_human_player_move
      when 9
        @optimal_move_sequence = 7
        3
      when 2
        7
    end
  end
end