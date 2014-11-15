require 'player'

describe Player do 
let(:player){ Player.new('Gio') }


it 'has a name' do
	expect(player.name).not_to be nil
end

it 'can choose rock' do
	expect(player.name).not_to be nil
	expect(player.choices.include?('rock')).to be true
end

it 'can choose paper' do
	expect(player.name).not_to be nil
	expect(player.choices.include?('paper')).to be true
end

it 'can choose scissors' do
	expect(player.name).not_to be nil
	expect(player.choices.include?('scissors')).to be true
end

it 'must have a choice to start playing' do
	expect(player.choices).not_to be nil
	player.choose('paper')
	expect(player.choice).to eq(['paper'])
end









end