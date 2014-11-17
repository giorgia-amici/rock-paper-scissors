class Game
	attr_accessor :players, :choice, :score, :rounds, :score
	attr_reader :choices

	MIN_ROUNDS = 3

	def initialize(rounds = MIN_ROUNDS)
		@players = []
		@choices = ['rock', 'paper', 'scissors']
		@rounds = rounds
		@score = 0
	end

	def add_player(player)
		@players.size < 2 ? @players << player : 'full'
	end

	def has_players?
		!players.empty?
	end
	
	def player_choice
		@players.each(&:choice)
	end

	def choose
		@choice = @choices.sample
	end

	def finish?
		return true if @rounds == 0
		false
	end

	def play(rules, player1, player2)
			@temp = rules.result(player1, player2)
			unless @temp == 'DRAW'
				@temp[0] == player1.choice[0] ? player1.score += 1 : player2.score += 1
		end
	end

	def update_round(rules, player1, player2)
		play(rules, player1, player2)
		@rounds -= 1 if @rounds > 0
	end

	def winner
		@players.select{|player| player.score == 3 }[0].name if finish?
	end
end