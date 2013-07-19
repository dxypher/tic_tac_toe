#computer is always X
#player is always O

require './victory'
class Game
  include VictoryChecker

  attr_accessor :board, :winner

  def initialize
    @board = {a1: ' ', a2: ' ', a3: ' ', 
              b1: ' ', b2: ' ', b3: ' ', 
              c1: ' ', c2: ' ', c3: ' '}
    @winner = nil
  end

  def play
    print_board
    # first_move
    #get_player_move <= decide who's turn and gets there move
    puts "Choose your next move..."
    box_number = gets.chomp
    make_move(box_number)
    victory # maybe call game_state_checker <= check vic, continue or stalemate
  end

  # def first_move
  #   num = rand(1..2)
  #   first = num == 1 ? 'computer' : 'player'
  #   message = first == 'computer' ? "Computer goes first." : "You go first."
  #   puts message

  # end

  def print_board
    puts '   1     2     3'
    puts "a  #{board[:a1]}  |  #{board[:a2]}  |  #{board[:a3]}"
    puts "  _______________"
    puts "b  #{board[:b1]}  |  #{board[:b2]}  |  #{board[:b3]}"
    puts "  _______________"
    puts "c  #{board[:c1]}  |  #{board[:c2]}  |  #{board[:c3]}"
  end
  
  def make_move(box_number)
    #need a switch @@switch that keep track of who just went
    box = box_number.to_sym
    board[box] = 'O'
  end

  def get_next_move
    #check to see who goes next
      #if player gets chomp and make move
      #if computer call method to get computer move and make move
  end
end

game = Game.new
game.play
# game.print_board
# # game.first_move
# puts "Choose your next move..."
# box_number = gets.chomp
# game.make_move(box_number)
# game.print_board
# game.diag_vic?
