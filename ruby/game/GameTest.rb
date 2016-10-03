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

end
