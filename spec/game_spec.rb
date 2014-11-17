require 'game'

describe Game do 
let(:game)                         { Game.new                           }
let(:game_5_rounds)                { Game.new(5)                        }
let(:player)                       { double :player, :choice => 'paper' }
let(:second_player)                { double :player, :choice => 'rock'  }
let(:choice)                       { double :choice                     }
let(:logic)                        { double :logic                      }
                      

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
		expect(game_5_rounds.rounds).to eq(5)
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

	# it 'knows who wins the round' do
	# 	allow(second_player).to receive(:score).and_return(0)
	# 	allow(player).to receive(:score).and_return(1)
	# 	expect(logic).to receive(:result).with(player, second_player).and_return("rock wins")
	# 	expect(game.play(logic, player, second_player)).to eq(1)
	# end

	it 'knows when the players cannot play anymore' do
		expect(game.rounds).to eq(3)
		expect(game.finish?).to be false
	end

	it 'upgrades the score' do

	end

	it 'declares a winner' do
	# 	expect(game.rounds).to eq(3)
	# 	allow(second_player).to receive(:score).and_return(0)
	# 	expect(second_player).to receive(:name).and_return('bubu')
	# 	game.add_player(second_player)
	# 	expect(game.winner).to eq('bubu')
	end


end
end

