require '/Users/saritaradia/Desktop/Projects/Golden-Square-API/lib/05_stringrepeat.rb'

RSpec.describe StringRepeater do
  it "Asks user for input, and repeats string" do
    io = double :terminal_io
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(io).to receive(:puts).with("Please enter a string").ordered
    expect(io).to receive(:gets).and_return("Hello").ordered

    expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets).and_return("3").ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("HelloHelloHello").ordered
    string = StringRepeater.new(io)
    string.run
  end

end
