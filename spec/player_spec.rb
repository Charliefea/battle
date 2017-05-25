require 'player.rb'

describe Player do
  subject(:player1) {described_class.new('Sally')}
  subject(:player2) {described_class.new('Geoff')}

  it 'returns the name of the player' do
    expect(player1.name).to eq 'Sally'
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player1.hit_points).to eq 15
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player2.receive_damage }.to change { player2.hit_points }.by(-10)
    end
  end
 end
