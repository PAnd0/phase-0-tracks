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


end

# user interface
# game = new Game("hairpin")
# p game.word