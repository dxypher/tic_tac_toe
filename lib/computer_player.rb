require './lib/first_mover_sequence'
require './lib/second_mover_sequence'
class ComputerPlayer
  include FirstMoverSequence
  include SecondMoverSequence

  def get_next_computer_move(board, last_human_player_move, first_player)
    @grid = board.grid
    @last_human_player_move = last_human_player_move
    @first_player = first_player
    @turn_number ||= 1
    @optimal_move_sequence ||= nil

    get_winning_or_blocking_move || make_regular_move
  end

  private

  def get_winning_or_blocking_move
    get_current_state_of_winning_combinations
    marks = ['X', 'O']
    marks.each do |mark|
      @winning_combination_hashes.each do |winning_hash|
        if winning_hash.values.count(mark) == 2 && winning_hash.values.count(" ") == 1
          next_move = winning_hash.invert[" "]
          return next_move
        end
      end
    end
    return false
  end

  def get_current_state_of_winning_combinations
    keysets = winning_combinations
    @winning_combination_hashes = []
    keysets.each do |keyset|
      new_hash = {}
      keyset.each {|i| new_hash[i] = @grid[i]}
      @winning_combination_hashes << new_hash
    end
    return @winning_combination_hashes
  end

  def winning_combinations
    keysets = []
    keysets << [1, 2, 3]
    keysets << [4, 5, 6]
    keysets << [7, 8, 9]
    keysets << [1, 4, 7]
    keysets << [2, 5, 8]
    keysets << [3, 6, 9]
    keysets << [1, 5, 9]
    keysets << [3, 5, 7]
  end
 

  def make_regular_move
    @first_player == "computer" ? moves_if_computer_went_first : moves_if_computer_went_second
  end

  def moves_if_computer_went_first
    if @turn_number == 1
      @turn_number += 1
      1
    elsif @turn_number == 2
      @turn_number += 1
      set_first_mover_optimal_sequence
    else  
      choose_next_optimal_move
    end
  end

  def moves_if_computer_went_second
    if @turn_number == 1
      @turn_number += 1
      set_second_mover_optimal_sequence
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
      # Sequences below are for when Computer moved second  
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
end