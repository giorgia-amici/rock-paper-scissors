class Logic

attr_reader :combos
attr_accessor :rules, :score


COMBOS =  [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]

def initialize
	@combos = COMBOS
	@rules = {}
	game_rules
end

def game_rules
	@combos.each{|combo| @rules[combo] = "#{combo[0]} wins" && @rules[combo.rotate] = "#{combo[0]} wins"}
end


def result(player1, player2)
	temp = []
	unless player1.choice == player2.choice
		temp.push(player1.choice, player2.choice)
		@rules[temp]
	else
		return 'DRAW'
	end
end







end






