class StringRepeater
  def initialize(io)
    @terminal_io = io
  end

  def run
    @terminal_io.puts "Hello. I will repeat a string many times."
    @terminal_io.puts "Please enter a string"
    user_string = @terminal_io.gets.chomp

    @terminal_io.puts "Please enter a number of repeats"
    user_int = @terminal_io.gets.chomp.to_i

    @terminal_io.puts "Here is your result:"
    @terminal_io.puts "#{user_string}" * user_int

  end
end

# string = StringRepeater.new()
# string.run