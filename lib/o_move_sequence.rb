module OMoveSequence
  def set_second_mover_optimal_sequence(last_human_player_move)
    case last_human_player_move #first move by human player
      when 1
        'optimal_move_sequence_8'
      when 2
        'optimal_move_sequence_9'
      when 3
        'optimal_move_sequence_10'
      when 4
        'optimal_move_sequence_11'
      when 5
        'optimal_move_sequence_12'
      when 6
        'optimal_move_sequence_13'
      when 7
        'optimal_move_sequence_14'
      when 8
        'optimal_move_sequence_15'
      when 9
        'optimal_move_sequence_16'
    end
  end

  def optimal_move_sequence_8(last_human_player_move)
    case last_human_player_move
      when 6
        8
      when 8
        6
      when 9
        2
    end
  end

  def optimal_move_sequence_9(last_human_player_move)
    case last_human_player_move
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

  def optimal_move_sequence_10(last_human_player_move)
    case last_human_player_move
      when 4
        8
      when 7
        2
      when 8
        4
    end
  end

  def optimal_move_sequence_11(last_human_player_move)
    case last_human_player_move
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

  def optimal_move_sequence_12(last_human_player_move)
    case last_human_player_move
      when 9
        3
    end
  end

  def optimal_move_sequence_13(last_human_player_move)
    case last_human_player_move
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

  def optimal_move_sequence_14(last_human_player_move)
    case last_human_player_move
      when 2
        6
      when 3, 6
        2
    end
  end

  def optimal_move_sequence_15(last_human_player_move)
    case last_human_player_move
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

  def optimal_move_sequence_16(last_human_player_move)
    case last_human_player_move
      when 1, 4
        2
      when 2
        4        
    end
  end
end