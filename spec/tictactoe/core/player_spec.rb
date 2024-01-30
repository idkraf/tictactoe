require 'spec_helper'

describe TicTacToe::Core::Player do

  subject(:player) {described_class.new("Gori")}

  context "#name" do
    it "returns the player's name" do
      expect(player.name).to eq "Gori"
    end

  end
end
