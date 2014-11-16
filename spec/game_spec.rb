require 'game'

describe Game do 
let(:game)                         {    Game.new    }
let(:player)                       { double :player }
let(:second_player)                { double :player }
let(:choice)                       { double :choice }


def let_player_choose
		expect(game).to have_players
		allow(player).to receive(:choice).and_return(choice)
		expect(game.player_choice(player)).to eq(choice)
end

def let_game_choose
		expect(game).to have_players
		allow(player).to receive(:choice).and_return(choice)
		game.choose
		expect(game.choice).not_to be nil
end

context 'the game set up' do

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

	it 'knows whose round it is'

	it 'let the player\'s choose' do
		game.add_player(player)
		let_player_choose
	end

	it 'after the player has chosen, chooses randomly between rock, paper, scissors' do
		game.add_player(player)
		let_game_choose
	end

end


end

