class Question
  attr_accessor :answer, :question

  def initialize(question)
    @question = question
  end
end

class Greet
  attr_accessor :name, :age

  def initialize(record)
    @name = record[:name]
    @age = record[:age].to_i
  end

  def adult
    if age >= 18
      "Your old enough to code"
    else
      "bawal pa"
    end
  end

    def greeting
      "So you're #{age}, #{name}"
    end
end

# p "What is your name?"
# p "How old are you?"
question_1 = Question.new("What is your name?")
p question_1.question
question_1.answer = gets
question_2 = Question.new("How old are you?")
p question_2.question
question_2.answer = gets

record = { name: question_1.answer,
           age: question_2.answer }

n = Greet.new record

puts n.greeting
puts n.adult