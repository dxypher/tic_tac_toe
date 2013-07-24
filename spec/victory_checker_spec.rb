require "./lib/victory_checker"

describe 'VictoryChecker' do
  let(:victory_checker) { VictoryChecker.new }

  context "Computer player makes winning move" do
    it "should determine that the Computer Player has won" do
      board = {a1: 'O', a2: 'O', a3: 'X', 
               b1: ' ', b2: 'X', b3: ' ', 
               c1: 'X', c2: ' ', c3: ' '}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "The Computer has Won!!!"
    end

    it "should determine that the Computer Player has won" do
      board = {a1: 'O', a2: 'O', a3: 'X', 
               b1: ' ', b2: ' ', b3: 'X', 
               c1: ' ', c2: ' ', c3: 'X'}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "The Computer has Won!!!"
    end

    it "should determine that the Computer Player has won" do
      board = {a1: 'O', a2: 'O', a3: ' ', 
               b1: ' ', b2: ' ', b3: ' ', 
               c1: 'X', c2: 'X', c3: 'X'}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "The Computer has Won!!!"
    end
  end

  context "Human Player makes winning move" do
    it "should determine that the Human Player has won" do
      board = {a1: 'O', a2: ' ', a3: 'X', 
               b1: 'O', b2: 'X', b3: ' ', 
               c1: 'O', c2: ' ', c3: ' '}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "You've Won!!!"
    end

    it "should determine that the Human Player has won" do
      board = {a1: 'X', a2: ' ', a3: 'O', 
               b1: 'X', b2: 'O', b3: ' ', 
               c1: 'O', c2: ' ', c3: ' '}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "You've Won!!!"
    end

    it "should determine that the Human Player has won" do
      board = {a1: 'X', a2: ' ', a3: ' ', 
               b1: 'X', b2: 'X', b3: ' ', 
               c1: 'O', c2: 'O', c3: 'O'}

      winner = victory_checker.victory_or_continue_play(board)
      winner.should == "You've Won!!!"
    end
  end

  context "When there is a stalemate" do
    it "should determine the game is a draw" do
      board = {a1: 'X', a2: 'X', a3: 'O', 
               b1: 'O', b2: 'O', b3: 'X', 
               c1: 'X', c2: 'X', c3: 'O'}

      result = victory_checker.victory_or_continue_play(board)
      result.should == "It's a Draw!!!"
    end
  end

  context "When there is no win and play can continue" do
    it "should determine the game is a draw" do
      board = {a1: 'X', a2: 'X', a3: 'O', 
               b1: 'O', b2: 'O', b3: 'X', 
               c1: 'X', c2: ' ', c3: ' '}

      result = victory_checker.victory_or_continue_play(board)
      result.should == "continue play"
    end
  end
end