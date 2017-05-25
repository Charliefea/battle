require 'player.rb'

describe Player do
  let(:player) {described_class.new('Sally')}

  it 'returns the name of the player' do
    puts player
    expect(player.name).to eq 'Sally'
  end

end
