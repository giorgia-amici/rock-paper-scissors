require 'logic'

describe Logic do 
	let(:logic) { Logic.new }
	COMBOS =  [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]

it 'has a list of possible combos' do
	expect(logic.combos).to eq(COMBOS)
end

it 'is a series of rules' do
	expect(logic.combos).to eq(COMBOS)
	logic.game_rules
	expect(logic.rules.size).to eq(6)
end

end