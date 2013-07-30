module SecondMoverSequence
  def set_second_mover_optimal_sequence
    case @last_human_player_move #first move by human player
      when 1
        optimal_move_sequence_8
      when 2
        optimal_move_sequence_9
      when 3
        optimal_move_sequence_10
      when 4
        optimal_move_sequence_11
      when 5
        optimal_move_sequence_12
      when 6
        optimal_move_sequence_13
      when 7
        optimal_move_sequence_14
      when 8
        optimal_move_sequence_15
      when 9
        optimal_move_sequence_16
    end
  end

  def optimal_move_sequence_8
    case @last_human_player_move
      when 1
        @optimal_move_sequence = 8
        5
      when 6
        8
      when 8
        6
      when 9
        2
    end
  end

  def optimal_move_sequence_9
    case @last_human_player_move
      when 2
        @optimal_move_sequence = 9
        5
      when 4
        3
      when 6, 8
        1
      when 7
        6
      when 9
        4
    end
  end

  def optimal_move_sequence_10
    case @last_human_player_move
      when 3
        @optimal_move_sequence = 10
        5
      when 4
        8
      when 7
        2
      when 8
        4
    end
  end

  def optimal_move_sequence_11
    case @last_human_player_move
      when 4
        @optimal_move_sequence = 11
        5
      when 2
        3
      when 3
        8
      when 6, 8
        1
      when 9
        2
    end
  end

  def optimal_move_sequence_12
    case @last_human_player_move
      when 5
        @optimal_move_sequence = 12
        1
      when 9
        3
    end
  end

  def optimal_move_sequence_13
    case @last_human_player_move
      when 6
        @optimal_move_sequence = 13
        5
      when 1
        8
      when 2, 4
        1
      when 7
        2
      when 8
        3
    end
  end

  def optimal_move_sequence_14
    case @last_human_player_move
      when 7
        @optimal_move_sequence = 14
        5
      when 2
        6
      when 3, 6
        2
    end
  end

  def optimal_move_sequence_15
    case @last_human_player_move
      when 8
        @optimal_move_sequence = 15
        5
      when 2
        1
      when 3
        4
      when 4
        1
      when 6
        3
    end
  end

  def optimal_move_sequence_16
    case @last_human_player_move
      when 9
        @optimal_move_sequence = 16
        5
      when 1, 4
        2
      when 2
        4        
    end
  end
end