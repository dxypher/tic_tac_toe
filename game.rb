#computer is always X
#player is always O

require './victory'
require './computer_player'
class Game
  attr_accessor :board, :winner

  def initialize
    @board = {a1: ' ', a2: ' ', a3: ' ', 
              b1: ' ', b2: ' ', b3: ' ', 
              c1: ' ', c2: ' ', c3: ' '}
    @winner = nil
    @computer_player = ComputerPlayer.new
    @victory_checker = VictoryChecker.new
  end

  def play
    @next_player ||= who_goes_first
    @last_opponent_move ||= nil
    print_board
    box_number = get_next_move
    make_move(box_number)
    announce_victory_or_continue_play
  end

  private
  def announce_victory_or_continue_play
    case @victory_checker.victory_or_continue_play(board)
      when "draw"
        puts "It's a Draw!!!"
      when "continue"
        play
      when 'X'
        print_board
        puts "The Computer has Won!!!"
      when 'O'
        puts "You've Won!!!"
    end
  end

  def who_goes_first
    num = rand(1..2)
    @first_player = num == 1 ? 'computer' : 'player'
    message = @first_player == 'computer' ? "Computer goes first." : "You go first."
    puts message
    return @first_player
  end

  def print_board
    puts '   1     2     3'
    puts "a  #{board[:a1]}  |  #{board[:a2]}  |  #{board[:a3]}"
    puts "  _______________"
    puts "b  #{board[:b1]}  |  #{board[:b2]}  |  #{board[:b3]}"
    puts "  _______________"
    puts "c  #{board[:c1]}  |  #{board[:c2]}  |  #{board[:c3]}"
  end
  
  def get_next_move
    box_number = @next_player == 'player' ? get_player_move : get_computer_move
    @next_player = @next_player == 'player' ? 'computer' : 'player'
    return box_number
  end

  def get_player_move
    puts "Choose your next move..."
    @last_opponent_move = gets.chomp.to_sym
  end

  def get_computer_move
    puts "Computer move..."
    move = @computer_player.get_next_move(board, @last_opponent_move, @first_player)
  end

  def make_move(box_number)
    box = box_number

    if board[box] != " "
      puts "Sorry, that box is already filled."
      new_move = get_player_move
      make_move(new_move)
    else
      board[box] = @next_player == 'computer' ? 'O' : 'X'
    end
  end
end

game = Game.new
game.play