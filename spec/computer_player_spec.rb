require "./lib/computer_player"

describe 'ComputerPlayer' do
  let(:computer) {ComputerPlayer.new('computer')}

  it "should set the computer player's mark to 'X'" do
    computer.mark.should == 'X'
  end

  it "should set the computer player's mark to 'O'" do
    computer = ComputerPlayer.new('human')
    computer.mark.should == 'O'
  end

  it "should set the computer player's turn number to 1" do
    computer.turn_number.should == 1
  end

  it "should set the computer player's optimal_move_sequence to nil" do
    computer.optimal_move_sequence.should be_nil
  end
end