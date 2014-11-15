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




end



