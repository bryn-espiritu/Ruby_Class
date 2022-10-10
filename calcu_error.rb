class Calculator
  attr_accessor :num1, :num2, :answer
  def initalize(get)
    @n1 = get[:num1].to_f
    @n2 = get[:num2].to_f
    @answer = get[:answer].to_f
  end

def addition_function
  puts "Which numbers would you like to add?"
  @n1 = gets.chomp
  @n2 = gets.chomp
  @n1 + @n2 == @answer
  puts "The sum is... #{@answer}"
end

def subtraction_function
  puts "Which numbers would you like to subtract?"
  @n1 = gets.chomp.to_i
  @n2 = gets.chomp.to_i
  @n1 - @n2 == @answer
  puts "The answer is... #{@answer}"
end

def multiplication_function
  puts "Which numbers would you like to multiply?"
  @n1 = gets.chomp
  @n2 = gets.chomp
  @n1 * @n2 == @answer
   "The answer is... #{@answer}"
end
end
puts "Would you like to [add], [multiply], or [subtract]?"
response = gets.chomp
if response == "add" then
   addition_function
   puts addition_function
end
if response == "subtract" then
  subtraction_function
end
if response == "multiply" then
  multiplication_function
end