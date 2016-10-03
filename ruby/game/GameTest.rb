require_relative 'Game'

describe Game do
  let(:game) { Game.new("hairpin") }

  it "creates hash from input word" do
    expect(game.word["hairpin"]).to eq "_______"
  end

  it "tracks guesses remaining" do
    expect(game.guesses).to eq 3 * "hairpin".length
  end

end
