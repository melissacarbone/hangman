#!/usr/bin/env ruby

words = ["apple", "banana", "orange"]
word = words[rand(words.length)]
print word
letters = word.split('')
# underscore = []
# letters.each {|l| underscore << "_"}
# hash = Hash[*(letters.zip(underscore).flatten)]
# puts hash.values.join(" ")
print "Please guess a letter: "
user_input = gets.chomp
if user_input.length == 1
  guessed_letter = user_input
elsif user_input.length > 1
  guessed_word = user_input
end

guessed_letters = []
guessed_letters << guessed_letter if letters.include?(guessed_letter)

letters.each do |l|
  if guessed_letters.include?(l)
    print l
  else
    print "_"
  end
end



#letters.include?(guessed_letter)
