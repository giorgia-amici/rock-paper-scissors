require 'logic'

describe Logic do 

	COMBOS =  [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]
	let(:logic)              {     Logic.new     }
	let(:player1)            {   double :player,  choice: 'rock'      }
	let(:player2)            {   double :player,  choice: 'paper'     }
	let(:player3)            {   double :player,  choice: 'scissors'  }
	let(:game)               {   double :game,    choice: 'rock'      }

context 'writing the rules' do


	it 'has a list of possible combos' do
		expect(logic.combos).to eq(COMBOS)
	end

	it 'is a series of rules' do
		expect(logic.combos).to eq(COMBOS)
		logic.game_rules
		expect(logic.rules.size).to eq(6)
	end

end

	context 'according to the rules' do

		it 'returns DRAW if the two players have the same choice' do 
			allow(game).to receive(:add_player).with(player1).and_return true
			logic.result(game, player1)
			expect(logic.result(game, player1)).to eq('DRAW')
		end

		it 'returns LOSS' do
			allow(game).to receive(:add_player).with(player3).and_return true
			logic.result(game, player1)
			expect(logic.result(game, player3)).to eq('rock wins')
		end

		it 'returns WIN' do
			allow(game).to receive(:add_player).with(player3).and_return true
			logic.result(game, player1)
			expect(logic.result(game, player2)).to eq('paper wins')
		end



		# it 'declares a winner of the turn'


		# it 'declares the absolute winner'

	end

end





















