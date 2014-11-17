require 'logic'

describe Logic do 

	COMBOS =  [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]
	let(:rules)              {Logic.new                            }
	let(:player1)            {double :player,  choice: 'rock'      }
	let(:player2)            {double :player,  choice: 'paper'     }
	let(:player3)            {double :player,  choice: 'scissors'  }
	let(:game)               {double :game,    choice: 'rock'      }

context 'writing the rules' do


	it 'has a list of possible combos' do
		expect(rules.combos).to eq(COMBOS)
	end

	it 'is a series of rules' do
		expect(rules.combos).to eq(COMBOS)
		rules.game_rules
		expect(rules.rules.size).to eq(6)
	end

end

	context 'according to the rules' do

		it 'returns DRAW if the two players have the same choice' do 
			allow(game).to receive(:add_player).with(player1).and_return true
			rules.result(game, player1)
			expect(rules.result(game, player1)).to eq('DRAW')
		end

		it 'returns LOSS' do
			allow(game).to receive(:add_player).with(player3).and_return true
			rules.result(game, player1)
			expect(rules.result(game, player3)).to eq('rock wins')
		end

		it 'returns WIN' do
			allow(game).to receive(:add_player).with(player3).and_return true
			rules.result(game, player1)
			expect(rules.result(game, player2)).to eq('paper wins')
		end

	end

end





















