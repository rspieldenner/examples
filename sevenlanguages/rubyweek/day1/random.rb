answer = rand(100)
guess = -1
prompt = 'Guess a number between 0 and 100? '
count = 0

while guess != answer
  puts prompt
  guess = gets.chomp.to_i
  count = count + 1
  puts "Your guess #{guess} is too low" if guess < answer
  puts "Your guess #{guess} is too high" if guess > answer
end

puts "You correctly guessed #{guess} in #{count} guesses."

