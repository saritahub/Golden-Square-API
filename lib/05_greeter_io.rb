class Greeter
  def initialize(io)
    @terminal_io = io
  end

  def greet
    @terminal_io.puts "What is your name?"
    name = @terminal_io.gets.chomp
    @terminal_io.puts "Hello, #{name}!"
  end
end

