# Creating an Input
# puts "Enter your Name:"
# name = gets.chomp
# puts "Enter your Age:"
# age = gets.chomp
# puts "Hello #{name}, how are you?"
# puts "so you are #{age}"
#----------------------------------------------------

# Array
# user = Array["Bryn", "Mark", "Erwin"]
# user[0] =

# puts user.sort
#----------------------------------------------------

#Hashes = can use string into Int (1, 2, 3) or this (:Quezon City, :Manila, :Makati)
# city = {
#   "Quezon City" => "QC",
#   "Manila" => "MNL",
#   "Makati" => "MKT"
# }
# puts city["Manila"]
#----------------------------------------------------

#Methods
# def sayhi(name, age)
#   "Hello #{name} you are #{age}"

# end

# puts "Top"
# puts sayhi("Bryn" , 20 )
# puts "Bottom"
#----------------------------------------------------

#Return
# def cube(num)
#   return num * num * num
# end

# puts cube(3)
#----------------------------------------------------

# -if statement-

# ismale = false
# istall = true

# if ismale and istall
#   puts "you are a tall male"
# elsif ismale and !istall
#   puts "you are a male"
# elsif !ismale and istall
#   puts "You are tall female"
# else
#   puts "you are female"
# end
#puts "-----------------------------------"
# -if statement_2-
# def max(num1, num2, num3)
#   if num1 >= num2 and num1 >= num3
#     return num1
#   elsif num2 >= num1 and num2 >= num3
#     return num2
#   else
#     return num3
#   end
# end

# puts max(1, 20,3)
#----------------------------------------------------

#Case Expression
# def get_day_name(day)
#   day_name = "mon"
#     case day
#     when "mon"
#       day_name = "Monday"
#     when "tue"
#       day_name = "Tuesday"
#     when "wed"
#       day_name = "Wednesday"
#     when "thu"
#       day_name = "Thursday"
#     when "fri"
#       day_name = "Friday"
#     when "sat"
#       day_name = "Saturday"
#     when "sun"
#       day_name = "Sunday"
#     else
#       day_name = "Invalid"
#     end
#   return day_name
# end
#puts get_day_name("ret")
#----------------------------------------------------

#while-loops

# index = 1
# while index <= 5
#   puts index
#   index += 1

# end
#----------------------------------------------------

#For Loops
# user = ["Mark", "Den", "Bryn", "Erwin"]
#
#  for element in user  #will display list of user inside element
#    # try changing 'user' to 0..5
#    puts element
#  end
# puts "-----------------------------------"
# user.each do |element_2| #same process but using each.do
#   #try changing 'user.each' to 6.times
#   puts element_2
# end
#----------------------------------------------------

#Exponent
# def pow(base_num, pow_num)
#   result = 1
#   pow_num.times do |index|
#     result = result * base_num
#   end
#   return result
# end
# puts pow(5, 2)
#----------------------------------------------------

# Reading ("r")/ Writing Files ("a", "w", "r+")
# File.open("test_2.txt", "a") do |file|
#   file.write("\nHey")
# end
#----------------------------------------------------

# Handling Exception (Error)
# nums = [1, 2, 3, 4, 5, 6]
# begin
#   num = 10 / 0
#   nums = [ako]
# rescue ZeroDivisionError
#   puts " Di ka pwede mag divide sa 0 kapatid"
# rescue NameError
#   puts "Unable to enter Class in Integer"
# end
#----------------------------------------------------

#Class & Objects
# class Book
#   attr_accessor :title, :author, :pages
# end

# book1 = Book.new
# book1.title = "Hatty Potter"
# book1.author = "JK Rowling"
# book1.pages = 400

# puts book1.pages
# puts book1.author
# puts book1.title

# book2 = Book.new
# book2.title = "Lord of the Rings"
# book2.author = "Tolkein"
# book2.pages = 800

# puts book2.pages
# puts book2.author
# puts book2.title
#----------------------------------------------------

#Initialize Method

# class Book
#   attr_accessor :title, :author, :pages
#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end
# end

# book1 = Book.new("Harry Potter", "JK Rowling", 500)
# book2 = Book.new("\nLord of the Rings", "Tolkein", 1000)

# puts book1.title
# puts book1.author
# puts book1.pages

# puts book2.title
# puts book2.author
# puts book2.pages
#----------------------------------------------------

#Object Method
# class Student
#   attr_accessor :name, :major, :grade
#   def initialize(name, major, grade)
#     @name = name
#     @major = major
#     @grade = grade
#   end
#
#   def has_honors
#     if @grade >= 80
#       return true
#     end
#     return false
#   end
# end
#
# student1 = Student.new("Bryn Espiritu", "KodaCamp: Front End", 80)
# student2 = Student.new("Mark Garjas", "KodaCamp: Back End", 70)
# puts student2.has_honors
#----------------------------------------------------

#inheritance
# class Chef
#   def make_chicken
#     puts "The chef makes Chicken"
#   end
#   def make_salad
#     puts "The chef makes Salad"
#   end
#   def make_special
#     puts "The chef makes Adobong Manok"
#   end
# end

# class ItalianChef < Chef
#   def make_special
#     puts "The chef makes tortang talong"
#   end
#   def make_pasta
#     puts "The chef makes Pasta"
#   end
# end

# chef = Chef.new
# chef.make_special

# italian_chef = ItalianChef.new
# italian_chef.make_pasta
#----------------------------------------------------

#Module

module Tools
  def sayhi(name)
    puts "hello #{name}"
  end
  def saybye(name)
    puts "bye #{name}"
  end
end

include Tools
Tools.sayhi("mike")
Tools.saybye("Bryn")
