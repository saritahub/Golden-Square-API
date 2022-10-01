require '/Users/saritaradia/Desktop/Projects/Golden-Square-API/lib/05_greeter_io.rb'

RSpec.describe Greeter do
  it "Asks the user for their name and says hello" do
    io = double :terminal_io
    expect(io).to receive(:puts).with("What is your name?").ordered
    expect(io).to receive(:gets).and_return("Kay").ordered
    expect(io).to receive(:puts).with("Hello, Kay!").ordered
    greeter = Greeter.new(io)
    greeter.greet
  end
end













#Initial test, this will always pass as its not properly testing the methods
# it "Asks the user for their name and says hello" do
#   greeter = Greeter.new
#   greeter.greet
# end

# Second test, again this will always pass but not properly testing methods
# it "Asks the user for their name and says hello" do
#   io = double :io, puts: nil, gets: "Kay"
#   greeter = Greeter.new(io)
#   greeter.greet
# end