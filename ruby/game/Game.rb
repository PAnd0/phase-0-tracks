# game class design
# - Create class Game

# game class
class Game
  attr_accessor :word
  def initialize(word)
    blanks = ""
    word.length.times do
      blanks << "_"
    end
    @word = {word => blanks}
  end
end

# user interface
# game = new Game("hairpin")
# p game.word