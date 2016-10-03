require_relative 'Game'

describe Game do
  let(:game) { Game.new("hairpin") }
  input = "hairpin"

  it "creates hash from input word" do
    expect(game.word[input]).to eq "_______"
  end

  it "calculates guesses" do
    expect(game.guess_count).to eq input.length * 3
  end

  it "tracks guesses remaining" do
    game.use_guess
    expect(game.guess_count).to eq input.length * 3 - 1
  end

  it "provides word state" do
    expect(game.word_state).to eq "_______"
  end

  it "updates word state" do
    game.update_word("i")
    expect(game.word_state).to eq "__i__i_"
  end

  it "checks for repeat guesses" do
    game.update_word("i")
    expect(game.repeat_guess?("i")).to eq true
  end

  it "checks if game has been won" do
    game.update_word("h")
    game.update_word("a")
    game.update_word("i")
    game.update_word("r")
    game.update_word("p")
    game.update_word("n")
    expect(game.word_guessed?).to eq true
  end

  # it "processes guess input" do
  #   game.guess("h")
  #   expect(game.word_state).to eq "h-i--i-"
  #   expect(game.guess_count).to eq input.length * 3 - 2
  # end

  # it "does not count repeat guesses" do
  #   game.guess("h")
  #   expect(game.word_state).to eq "h-i--i-"
  #   expect(game.guess_count).to eq input.length * 3 - 2
  # end


end
