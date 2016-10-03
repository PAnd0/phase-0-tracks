# game class design
# - create class Game
#     - create initialize method
#       - create hash with key = word and value = blanks
#       - create guess count attribute and set to 3 * the number of letters in the word
#     - attribute accessors for word hash and guess count
#     - create method to decrement guess count
#     - create method to return word value (blanks) from hash
#     - create method to fill in blanks with guess letter wherever that letter is found in word.
#     - create method to check whether a guess is a repeated guess
#     - create method to check whether the word has been fully guessed correctly.
#     - create rspec tests for each method.
# - add driver code to get word from player 1 and loop, updating word until player 2 wins or loses.


# game class
class Game
  attr_accessor :word, :guess_count
  def initialize(word)
    blanks = ""
    word.length.times do
      blanks << "_"
    end
    @word = {word => blanks}
    @guess_count= word.length * 3
  end

  def use_guess
    @guess_count -= 1
  end

  def word_state
    @word.values[0]
  end

  def update_word(letter_guess)
    i = 0
    while i < @word.values[0].length
      if @word.keys[0][i] == letter_guess
       @word.values[0][i] = @word.keys[0][i]
      end
      i += 1
    end
  end

  def repeat_guess?(letter)
    @word.values[0].include?(letter)
  end

  def word_guessed?
    !@word.values[0].include?("_")
  end


end

# user interface
puts "Welcome to Definitely Not Hangman!"
puts "Player 1, please enter a word to be guessed by Player 2."
game = Game.new(gets.chomp)

while game.guess_count > 0
  puts "Player 2, here is the word for you to guess: #{game.word_state}"
  puts "Please enter a letter guess!"
  guess = gets.chomp

  if !game.repeat_guess?(guess)
    game.update_word(guess)
    game.use_guess
  end

  if game.word_guessed?
    puts "The word is: #{game.word_state}"
    puts "Congratulations! You've won the game!"
    break
  end
end

if !game.word_guessed?
puts "Unfortunately you did not have your guessing hat on today. Please try harder next time."
end