#!/usr/bin/env ruby

# Method to ask the user for a guess
# Returns the guess as an integer
def ask_for_guess
  print 'What is your guess? '
  gets.chomp.to_i
end

def analyze_guess(guess)
  if guess < $number
    'Too low'
  elsif guess > $number
    'Too high'
  else
    # If the guess is correct
    'You got it'
  end
end

# Pick a random number from 1 to 10
$number = rand(10) + 1
response = ''

# Enter loop
while response != 'You got it'
  # Ask user for guess
  guess = ask_for_guess
  
  response = analyze_guess(guess)
  puts response
end
