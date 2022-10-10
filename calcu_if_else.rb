
class Question
  attr_accessor :question, :answer
  def initialize(question)
    @question = question
  end
end

class Calculator
  attr_accessor :first, :sec, :sum, :diff, :quot, :prod, :choice
  def initialize(collect)
    @first = collect[:first].to_f
    @sec = collect[:sec].to_f
    @sum = collect[:sum].to_f
    @diff = collect[:diff].to_f
    @quot = collect[:quot].to_f
    @prod = collect[:prod].to_f
    @choice = collect[:choice].to_i
  end
  #Addition
  def addition
    sum = first + sec
    "sum is #{sum}"
  end
  #Subtraction
  def subtraction
    diff = first - sec
    "diff is #{diff}"
  end
  #Multiplication
  def multiplication
    prod = first * sec
    "Product is #{prod} "
  end
  #Division
  def division
    quot = first / sec
    "Quotient  is #{quot}"
  end

end

question_1 = Question.new("Enter First Number: ")
puts question_1.question
question_1.answer = gets
question_2 = Question.new("Enter Second Number: ")
puts question_2.question
question_2.answer = gets
while true
  question_3 = Question.new("Addition = 1 \n Subtraction = 2 \n Multiplication = 3 \n Division = 4 \n What Operation were going to use:")
  puts question_3.question
  question_3.answer = gets

  collect = {first: question_1.answer,
             sec: question_2.answer, choice: question_3.answer}

  solve = Calculator.new collect


  if solve.choice == 1
    puts solve.addition
    break
  elsif solve.choice == 2
    puts solve.subtraction
    break
  elsif solve.choice == 3
    puts solve.multiplication
    break
  elsif solve.choice == 4
    puts solve.division
    break
  else
    puts "Error Number, Please try again"
  end
end