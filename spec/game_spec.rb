require 'game'

describe Game do
let(:player1) {double(:player1, :name => 'DAVE', :hit_points => 20000)}
let(:player2) {double(:player2)}
subject(:game) {described_class.new(player1, player2)}

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#initialize' do
    it 'recieves 2 player instances on intialization' do
      expect(Game).to respond_to(:new).with(2).argument
    end

    it 'can see the player\'s name' do
      expect(game.player1.name).to eq 'DAVE'
    end
  end

  describe "#switch turn" do
    it "allows players to switch turns" do
      game.switch_turn
      expect(game.attacking_player).to eq player2
      expect(game.opponent).to eq player1
    end
  end
end
