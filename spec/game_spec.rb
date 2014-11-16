require 'game'

describe Game do 
let(:game)                         {    Game.new    }
let(:player)                       { double :player, :choice => 'paper' }
let(:second_player)                { double :player, :choice => 'rock' }
let(:choice)                       { double :choice }
let(:logic)                        { double :logic  }
                      

def let_player_choose
		expect(game).to have_players
		expect(game.player_choice).to eq([player])
end

def let_game_choose
		expect(game).to have_players
		allow(player).to receive(:choice).and_return(choice)
		game.choose
		expect(game.choice).not_to be nil
end

context 'the game set up' do

	it 'has 3 rounds by default' do
		expect(game.rounds).to eq(3)
	end

	it 'can have more than 3 rounds' do
		game.rounds?(5)
		expect(game.rounds).to eq(5)
	end

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

	it 'upgrades the count of rounds'

	it 'upgrades the score'

	it 'let the player\'s choose' do
		game.add_player(player)
		let_player_choose
	end

	it 'after the player has chosen, chooses randomly between rock, paper, scissors' do
		game.add_player(player)
		let_game_choose
	end

end

context 'after the two players have made their choices' do

	it 'upgrade the count of rounds after each manche' do
		expect(game.rounds).to eq(3)
		allow(logic).to receive(:result).with(player, second_player).and_return('rock wins')
		game.update_round(logic, player, second_player)
		expect{game.update_round(logic, player, second_player)}.to change{game.rounds}.by -1
	end

	it 'knows when the players cannot play anymore' do

	end






end
end

