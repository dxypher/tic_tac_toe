require './lib/victory_checker'
require './lib/computer_player'
require './lib/human_player'
require './lib/board'
require './lib/user_interface'
class Game
  attr_accessor :winner, :next_player
  attr_reader :first_player

  def initialize
    @first_player = who_goes_first
    @next_player = @first_player
    @board = Board.new
    @ui = UserInterface.new
    @computer_player = ComputerPlayer.new(@first_player)
    @human = HumanPlayer.new(@first_player)
    @victory_checker = VictoryChecker.new
  end

  def print_game_instructions
    puts "Welcome to Tic-Tac-Toe..."
    puts "To make a move select a number between 1 and 9 that corresponds"
    puts "to the box where you want your move to go."

    puts "    1  |  2  |  3 "
    puts "  _________________"
    puts "    4  |  5  |  6 "
    puts "  _________________"
    puts "    7  |  8  |  9 "

    message = first_player == 'computer' ? "Computer goes first and is 'X'." : "You go first and are 'X'."
    puts message
  end

  def play
    @last_human_player_move ||= nil
    box_number = get_next_move
    @board.make_move(box_number, current_player(next_player))
    @ui.print_board(@board.grid)
    unless announce_victory?
      play
    end
  end


  def current_player(next_player)
    if next_player == 'human'
      @computer_player
    else
      @human
    end
  end

  private

  def who_goes_first
    num = rand(1..2)
    first_player = num == 1 ? 'computer' : 'human'
    return first_player
  end

  def announce_victory?
    result_of_victory_check = @victory_checker.victory_or_continue_play(@board)
    unless result_of_victory_check == 'continue play'
      if result_of_victory_check == @human.mark
        puts "You've Won!!!"
      elsif result_of_victory_check == @computer_player.mark
        puts 'The Computer Wins!'
      else
        puts "Its a Draw."
      end
      return true
    else
      return false
    end
  end

  def get_next_move
    box_number = self.next_player == 'human' ? get_player_move : get_computer_move
    self.next_player = self.next_player == 'human' ? 'computer' : 'human'
    return box_number
  end

  def get_player_move
    puts "Choose your next move..."
    user_input = gets.chomp.to_i
    if !(1..9).include?(user_input)
      puts "Sorry, please entry a valid box number between 1 and 9."
      new_move = get_player_move
    elsif @board.grid[user_input] != " "
      puts "Sorry, that box is already filled."
      new_move = get_player_move
    else
      @last_human_player_move = user_input
    end
  end

  def get_computer_move
    puts "Computer move..."
    move = @computer_player.get_next_computer_move(@board, @last_human_player_move)
  end
end