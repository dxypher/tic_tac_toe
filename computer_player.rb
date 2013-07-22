class ComputerPlayer
  def initialize
  end

  def get_next_move(board, last_opponent_move, first_player)
    @board = board
    @first_player = first_player
    @last_opponent_move = last_opponent_move
    @turn_number ||= 1
    @optimal_move_sequence ||= nil
    is_a_win_possible? || make_blocking_move? || make_regular_move
  end

  def is_a_win_possible?
    setup_hash_to_check
    @hashes.each do |new_hash|
      if new_hash.values.count('X') == 2 && new_hash.values.count(" ") == 1
        move = new_hash.invert[" "]
        return move
      end
    end
    return false
  end
  
  def make_blocking_move?
    setup_hash_to_check
    @hashes.each do |new_hash|
      if new_hash.values.count('O') == 2 && new_hash.values.count(" ") == 1
        move = new_hash.invert[" "]
        return move
      end
    end
    return false
  end

  def make_regular_move
    @first_player == "computer" ? move_if_computer_went_first : move_if_computer_went_second
  end

  def move_if_computer_went_first
    if @turn_number == 1
      @turn_number += 1
      :a1
    elsif @turn_number == 2
      @turn_number += 1
      choose_optimal_move_sequence_first
    else  
      choose_next_optimal_move
    end
  end

  def move_if_computer_went_second
    if @turn_number == 1
      @turn_number += 1
      choose_optimal_move_sequence_second
    else
      choose_next_optimal_move
    end
  end

  def choose_optimal_move_sequence_first
    case @last_opponent_move #first move by human player
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

  def choose_optimal_move_sequence_second
    case @last_opponent_move #first move by human player
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

  def choose_next_optimal_move
    puts "HERE"
    p @optimal_move_sequence
    case @optimal_move_sequence
      when 1
        optimal_move_sequence_1
      when 2
        optimal_move_sequence_2
      when 3
        optimal_move_sequence_3
      when 4
        optimal_move_sequence_4
      when 5
        optimal_move_sequence_5
      when 6
        optimal_move_sequence_6
      when 7
        optimal_move_sequence_7
      when 8
        optimal_move_sequence_8
      when 9
        optimal_move_sequence_9
      when 10
        optimal_move_sequence_10
      when 11
        optimal_move_sequence_11
      when 12
        optimal_move_sequence_12
      when 13
        optimal_move_sequence_13
      when 14
        optimal_move_sequence_14
      when 15
        optimal_move_sequence_15
      when 16
        optimal_move_sequence_16
    end
  end

  def optimal_move_sequence_1
    case @last_opponent_move
      when :a2, :a3
        @optimal_move_sequence = 1
        :b1
      when :c1
        :b2
    end
  end

  def optimal_move_sequence_2
    case @last_opponent_move
      when :b1
        @optimal_move_sequence = 2
        :a2
      when :a3
        :b2
    end
  end

  def optimal_move_sequence_3
    case @last_opponent_move
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
    case @last_opponent_move
      when :b3
        @optimal_move_sequence = 4
        :b2
      when :c3
        :b3
    end
  end

  def optimal_move_sequence_5
    case @last_opponent_move
      when :c1
        @optimal_move_sequence = 5
        :a2
      when :b3
        :b2
    end
  end

  def optimal_move_sequence_6
    case @last_opponent_move
      when :c2
        @optimal_move_sequence = 6
        :b3
      when :a2
        :b2
    end
  end

  def optimal_move_sequence_7
    case @last_opponent_move
      when :c3
        @optimal_move_sequence = 7
        :a3
      when :a2
        :c1
    end
  end

  def optimal_move_sequence_8
    case @last_opponent_move
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
    case @last_opponent_move
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
    case @last_opponent_move
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
    case @last_opponent_move
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
    case @last_opponent_move
      when :b2
        @optimal_move_sequence = 12
        :a1
      when :c3
        :a3
    end
  end

  def optimal_move_sequence_13
    case @last_opponent_move
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
    case @last_opponent_move
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
    case @last_opponent_move
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
    case @last_opponent_move
      when :c3
        @optimal_move_sequence = 16
        :b2
      when :a1, :b1
        :a2
      when :a2
        :b1        
    end
  end


  def setup_hash_to_check
    keysets = get_keysets
    @hashes = []
    keysets.each do |keyset|
      new_hash = {}
      keyset.each {|i| new_hash[i] = @board[i]}
      @hashes << new_hash
    end
    return @hashes
  end

  def get_keysets
    keysets = []
    keysets << [:a1, :a2, :a3]
    keysets << [:b1, :b2, :b3]
    keysets << [:c1, :c2, :c3]
    keysets << [:a1, :b1, :c1]
    keysets << [:a2, :b2, :c2]
    keysets << [:a3, :b3, :c3]
    keysets << [:a1, :b2, :c3]
    keysets << [:a3, :b2, :c1]
  end
end