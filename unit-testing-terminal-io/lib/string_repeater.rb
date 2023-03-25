class StringRepeater
  def initialize(terminal = Kernel)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    string = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    number_of_repeat = @terminal.gets.chomp.to_i
    @terminal.puts "Here is your result:"

    @terminal.puts string * number_of_repeat
  end
end


# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run