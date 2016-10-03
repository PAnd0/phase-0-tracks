# game class design
# - Create class Game

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


end

# user interface
game = Game.new("hairpin")
game.update_word("i")
p game.word_state

p game.repeat_guess?("i")