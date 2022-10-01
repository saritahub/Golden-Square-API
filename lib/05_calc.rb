class InteractiveCalculator
  def initialize(terminal_io)
    @terminal_io = terminal_io
  end

  #Without Kernel
  def subtract
    @terminal_io.puts "Hello. I will subtract two numbers.\n Please enter a number"
    num_1 = @terminal_io.gets.chomp.to_i
    @terminal_io.puts "Please enter another number"
    num_2 = @terminal_io.gets.chomp.to_i
    @terminal_io.puts "Here is your result:\n #{num_1} - #{num_2} = #{num_1 - num_2}"
  end
end
