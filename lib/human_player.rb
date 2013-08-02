class HumanPlayer
  attr_reader :mark

  def initialize(first_player)
    @mark = get_mark(first_player)
  end

  def get_mark(first_player)
    first_player == 'human' ? "X" : "O"
  end
end