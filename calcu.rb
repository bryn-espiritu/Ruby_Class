class Question

  attr_accessor :question, :answer
  def initialize(question)
    @question = question
  end
end

class Calculator
  attr_accessor :first, :sec, :sum, :diff, :quot, :prod
  def initialize(collect)
    @first = collect[:first].to_i
    @sec = collect[:sec].to_i
    @sum = collect[:sum].to_i
    @diff = collect[diff].to_i
    @quot = collect[quot].to_i
    @prod = collect[prod].to_i
  end
  #Addition
  def Addition
    sum = first + sec
    "sum is #{sum}"
  end
  #Subtraction
  def Subtraction
    diff = first - sec
    "diff is #{diff}"
  end
  #Multiplication
  def Multiplication
    prod = first * sec
    "Product is #{prod} "
  end
  #Division
  def Division
    quot = first / sec
    "Quotient  is #{quot}"
  end
end

question_1 = Question.new("Enter First Number: ")
p question_1.question
question_1.answer = gets
question_2 = Question.new("Enter Second Number: ")
p question_2.question
question_2.answer = gets

collect = {first: question_1.answer,
           sec: question_2.answer}

solve = Calculator.new collect

puts solve.Addition
puts solve.Subtraction
puts solve.Multiplication
puts solve.Division