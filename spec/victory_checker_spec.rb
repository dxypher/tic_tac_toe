require "./lib/victory_checker"

describe 'VictoryChecker' do
  let(:victory_checker) { VictoryChecker.new }
  let(:board) { Board.new }

  context "Computer player makes winning move" do
    it "should determine that the Computer Player has won" do
      board.grid = {1 => 'O', 2 => 'O', 3 => 'X', 
               4 => ' ', 5 => 'X', 6 => ' ', 
               7 => 'X', 8 => ' ', 9 => ' '}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "X"
    end

    it "should determine that the Computer Player has won" do
      board.grid = {1 => 'O', 2 => 'O', 3 => 'X', 
               4 => ' ', 5 => ' ', 6 => 'X', 
               7 => ' ', 8 => ' ', 9 => 'X'}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "X"
    end

    it "should determine that the Computer Player has won" do
      board.grid = {1 => 'O', 2 => 'O', 3 => ' ', 
               4 => ' ', 5 => ' ', 6 => ' ', 
               7 => 'X', 8 => 'X', 9 => 'X'}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "X"
    end
  end

  context "Human Player makes winning move" do
    it "should determine that the Human Player has won" do
      board.grid = {1 => 'O', 2 => ' ', 3 => 'X', 
               4 => 'O', 5 => 'X', 6 => ' ', 
               7 => 'O', 8 => ' ', 9 => ' '}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "O"
    end

    it "should determine that the Human Player has won" do
      board.grid = {1 => 'X', 2 => ' ', 3 => 'O', 
               4 => 'X', 5 => 'O', 6 => ' ', 
               7 => 'O', 8 => ' ', 9 => ' '}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "O"
    end

    it "should determine that the Human Player has won" do
      board.grid = {1 => 'X', 2 => ' ', 3 => ' ', 
               4 => 'X', 5 => 'X', 6 => ' ', 
               7 => 'O', 8 => 'O', 9 => 'O'}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "O"
    end
  end

  context "When there is a stalemate" do
    it "should determine the game is a draw" do
      board.grid = {1 => 'X', 2 => 'X', 3 => 'O', 
               4 => 'O', 5 => 'O', 6 => 'X', 
               7 => 'X', 8 => 'X', 9 => 'O'}

      result = victory_checker.victory_or_continue_play(board)
      result.should == "It's a Draw!!!"
    end
  end

  context "When there is no win and play can continue" do
    it "should determine the game is a draw" do
      board.grid = {1 => 'X', 2 => 'X', 3 => 'O', 
               4 => 'O', 5 => 'O', 6 => 'X', 
               7 => 'X', 8 => ' ', 9 => ' '}

      result = victory_checker.victory_or_continue_play(board)
      result.should == "continue play"
    end
  end
end