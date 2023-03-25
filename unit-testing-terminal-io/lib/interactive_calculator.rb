class InteractiveCalculator
  def initialize(io = Kernel)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    num_1 = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    num_2 = @io.gets.chomp.to_i
    @io.puts "Here is your result:"
    @io.puts "#{num_1.to_s} - #{num_2.to_s} = #{(num_1 - num_2).to_s}"
  
  end

end

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1