require 'player.rb'

describe Player do
  let(:player) {described_class.new('Sally')}
  it 'returns the name of the player' do
    expect(player.name).to eq 'Sally'
  end

end
