class Logic

attr_reader :combos
attr_accessor :rules


COMBOS =  [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]

def initialize
	@combos = COMBOS
	@rules = {}
	game_rules
end

def game_rules
	@combos.each{ |combo| @rules[combo] = "#{combo[0]} wins" && @rules[combo.rotate] = "#{combo[0]} wins"}
end



# def add_score

# end

def result(game, player)
	temp = []
	if game.choice != player.choice
		temp.push(game.choice, player.choice)


	p 'DRAW' if game.choice == player.choice


end

#result(game, player)






end






