class Game
	attr_accessor :players, :choice, :score, :rounds
	attr_reader :choices

	MIN_ROUNDS = 3

	def initialize(rounds = MIN_ROUNDS)
		@players = []
		@choices = ['rock', 'paper', 'scissors']
		@rounds = rounds
	end

	def add_player(player)
		#raise ("There are already two players.") if @player.size == 2
		@players << player
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

	def play(logic, player1, player2)
		@temp = logic.result(player1, player2)
		@temp[0] == player1.choice[0] ? player1.score += 1 : player2.score += 1
	end

	def update_round(logic, player1, player2)
		play(logic, player1, player2)
		@rounds -= 1 if @rounds > 0
	end

	# def winner
	# @players.select{|player| player.score == 3 }	

	# end

	







end