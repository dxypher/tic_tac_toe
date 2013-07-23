require './first_mover_sequence'
require './second_mover_sequence'
class ComputerPlayer
  include FirstMoverSequence
  include SecondMoverSequence

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

  private
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

  def choose_next_optimal_move
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