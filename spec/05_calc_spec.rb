require '/Users/saritaradia/Desktop/Projects/Golden-Square-API/lib/05_calc.rb'

RSpec.describe InteractiveCalculator do
  it "Subtracts one number from another and returns the result" do
    io = double :terminal_io
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.\n Please enter a number").ordered
    expect(io).to receive(:gets).and_return("9").ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return("3").ordered
    expect(io).to receive(:puts).with("Here is your result:\n 9 - 3 = 6").ordered
    int = InteractiveCalculator.new(io)
    int.subtract

  end

end
