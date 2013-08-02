require './lib/x_move_sequence'
require './lib/o_move_sequence'
class ComputerPlayer
  include XMoveSequence
  include OMoveSequence

  attr_accessor :turn_number, :optimal_move_sequence
  attr_reader :mark

  def initialize(first_player)
    @mark = get_mark(first_player)
    @turn_number = 1
    @optimal_move_sequence = nil
  end

  def get_mark(first_player)
    first_player == 'computer' ? "X" : "O"
  end

  def get_next_computer_move(board, last_human_player_move)
    @grid = board.grid
    @last_human_player_move = last_human_player_move

    get_game_ending_move || make_regular_move
  end

  private

  def get_game_ending_move
    get_current_state_of_board
    human_mark = mark == 'X' ? 'O' : 'X'
    marks = [mark, human_mark]
    marks.each do |mark|
      @consecutive_marks.each do |consecutive_mark_hash|
        if consecutive_mark_hash.values.count(mark) == 2 && consecutive_mark_hash.values.count(" ") == 1
          next_move = consecutive_mark_hash.invert[" "]
          return next_move
        end
      end
    end
    return false
  end

  def get_current_state_of_board
    keysets = winning_combinations
    @consecutive_marks = []
    keysets.each do |keyset|
      new_hash = {}
      keyset.each {|i| new_hash[i] = @grid[i]}
      @consecutive_marks << new_hash
    end
    return @consecutive_marks
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
    if optimal_move_sequence.nil?
      mark == "X" ? moves_if_computer_is_X : moves_if_computer_is_O
    else
      choose_next_optimal_move
    end
  end

  def moves_if_computer_is_X
    if turn_number == 1
      self.turn_number = 2
      1
    elsif turn_number == 2
      self.optimal_move_sequence = set_first_mover_optimal_sequence(@last_human_player_move)
      choose_next_optimal_move
    end
  end

  def moves_if_computer_is_O
    self.optimal_move_sequence = set_second_mover_optimal_sequence(@last_human_player_move)
    @grid[5] == ' ' ? 5 : 1
  end

  def choose_next_optimal_move
    send(self.optimal_move_sequence, @last_human_player_move)
  end
end