require 'game'

describe Game do 
let(:game)                         {    Game.new    }
let(:player)                       { double :player }
let(:second_player)                { double :player }
let(:choice)                       { double :choice }


context 'before starting the game' do

	it 'does not have players when created' do
		expect(game.players).to eq([])
	end

	it 'can add a player' do 
		expect(game.players).to eq([])
		game.add_player(player)
		expect{game.add_player(player)}.to change{game.players.count}.by 1
	end

	it 'has players' do
		game.add_player(player)
		expect(game).to have_players
	end 

	it 'waits for the player\'s choice' do
		game.add_player(player)
		expect(game).to have_players
		allow(player).to receive(:choose).with(choice).and_return(choice)
		expect(game.player_choice(player, choice)).to eq(choice)
	end

	it 'after the player has chosen, chooses randomly between rock, paper, scissors' do
		game.add_player(player)
		expect(game).to have_players
		allow(player).to receive(:choose).with(choice).and_return(choice)
		expect(game.player_choice(player, choice)).to eq(choice)
		expect(game.choose).to eq('rock'|| 'paper'|| 'scissors')
	end

end

#context of matching choices
#rounds
#winner
#reset(cucumber)







end

