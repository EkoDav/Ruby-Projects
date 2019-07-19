#Assignment 1 - Ruby by Erik Davis (CS390)

#Print the string "Hello, world."
puts 'Hello world'

#For the string "Hello Ruby", find the index of the word "Ruby"
index = 'Hello Ruby'.rindex('Ruby')
puts "Index of the word Ruby in the string Hello Ruby is #{index}"

##Print the string “This is sentence number 1” where the number 1 
#increments from 1 to 10.
i = 1
while i <= 10
	puts "This is sentence number #{i}"
	i = i + 1
end

##Write a program that picks a random number.  Let a player guess the 
#number telling the player whether the guess is too high or too low.
ranNum = rand(100)
puts 'Guess my number between 1 and 100'
loop do
	puts 'Type an integer: '
	guessNum = gets.to_i
	if guessNum == ranNum
		puts "That is correct! The number was #{ranNum}. Great job!"
	elsif guessNum > ranNum
			puts 'Too high! Try again!'
	else 
		puts 'Too low! Try again!'
	end
break if guessNum == ranNum
end
