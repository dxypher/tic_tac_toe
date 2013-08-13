require './lib/user_interface'
require './lib/board'

describe UserInterface, '#print_board' do
  before do
    UserInterface.any_instance.stub(:puts)
  end

  it "should respond to print_board" do
    ui = UserInterface.new
    ui.should respond_to(:print_board)
  end

  it "should print a empty grid" do
    ui = UserInterface.new
    board = Board.new
    expected_output = ["      |     |   ", 
                       "  _______________",
                       "      |     |   ",
                       "  _______________", 
                       "      |     |   "]

    output = ui.print_board(board.grid)
    expect(output).to eq expected_output
  end
end