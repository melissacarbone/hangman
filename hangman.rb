#!/usr/bin/env ruby
puts "Welcome to Hangman!"              # Welcome

words = ["apple", "banana", "orange"]
word = words[rand(words.length)]        # Random word chosen
letters = word.split('')                # Word split into letters array
chances = 8                             # Chances variable is assigned
print "Word: "                          # Prints dashes for each letter in the word
letters.each {|l| print "_"}

puts "Chances remaining: " + chances.to_s   #Puts chances remaining
guessed_letters = []                    # Creates empty array to hold guessed letters

while chances != 0                      # While chances are not equal to 0 do this:

    print "Please guess a letter or word: "
    user_input = gets.chomp
# Check user input:
    if user_input.length == 1           # If only a letter is guessed
    guessed_letter = user_input
    guessed_letters << guessed_letter if letters.include?(guessed_letter)

          if word.include?(guessed_letter) # YES: letter is in word
            puts "Letter is in word!"
            puts "Chances remaining: #{chances}."
          else                              # NO: letter not in word
            puts "Letter is not in word!"
            chances -= 1
            puts "Chances remaining: #{chances}"
          end
          letters.each do |l|
            if guessed_letters.include?(l)
              print l
            else
              print "_"
            end
          end
            if letters.sort.uniq == guessed_letters.sort.uniq
                print "Yes, the word is #{word}.  You win!"
                exit
            end
    elsif user_input.length > 1           #If a word is guessed
      guessed_word = user_input
      if guessed_word == word
        puts "Yes, the word is #{word}.  You win!"
        exit
      else
        puts "You lose!"
        exit
    end
end

end
