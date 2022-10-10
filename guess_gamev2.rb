#Guess Game with Guess_count

secret_word = "Bryn" #the right answer
guess = "" #will use "gets" to input the answer
guess_count = 0 #times you answered
guess_limit = 3 #the counts that you need to answer
out_of_guesses = false #still have guesses
while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit #if count is less than limit. proceed guessing
    puts "Enter Guess:"
    guess = gets.chomp
    guess_count += 1 #increment the guess_count once you answered
  else #if count is greater than limit/ otherwise. will not proceed guessing
    out_of_guesses = true #out of guesses
  end
end
if out_of_guesses #if out of guesses is True and unable to enter correct answer
  puts "You Lose"
else #if still have guesses and able to enter correct answer
  puts "Correct"
end
