class Game
	attr_accessor :players, :choice
	attr_reader :choices

	def initialize
		@players = []
		@choices = ['rock', 'paper', 'scissors']
	end

	def add_player(player)
		@players << player
	end

	def has_players?
		!players.empty?
	end
	
	def player_choice(player)
		player.choice
	end

	def choose
		@choice = @choices.sample
	end

def rules(player)
	if player.choice.match('paper')
		if @choice == player.choice
			'DRAW'
		elsif @choice.match('scissors') 
			'GAME wins'
		else
			'GAME lost' 
		end
	elsif player.choice.match('rock')
		if @choice == player.choice
			'DRAW'
		elsif @choice.match('paper')
			'game WINs'
		else
			'game lost'
		end
	elsif player.choice.match('paper')
		if @choice == player.choice
			'DRAW'
		elsif @choice.match('rock')
			'game wins'
		else
			'game lost'
		end
	end
end
	

def match1(player)

end







	RULES = { ['Rock','Scissors'] 	=> { first_wins: 			'Rock crushes Scissors'},
					['Paper','Scissors'] 	=> { second_wins: 		'Scissors cut Paper'},
					['Paper','Rock'] 			=> { first_wins: 			'Paper covers Rock'},
					['Rock','Scissors'] 	=> { first_wins: 			'Rock crushes Scissors'}}






end