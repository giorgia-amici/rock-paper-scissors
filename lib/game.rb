class Game
	attr_accessor :players, :choice, :score, :rounds
	attr_reader :choices

	def initialize
		@players = []
		@choices = ['rock', 'paper', 'scissors']
		rounds?
	end

	def add_player(player)
		#raise ("There are already two players.") if @player.size == 2
		@players << player
	end

	def has_players?
		!players.empty?
	end

	def rounds?(rounds = 3)
		@rounds = rounds
	end
	
	def player_choice
		@players.each(&:choice)
	end

	#this method allows the game to play in case there is no second player
	def choose
		@choice = @choices.sample
	end

	def update_round(logic, player1, player2)
		logic.result(player1, player2) 
		@rounds -= 1 if @rounds > 0
	end

	# def update_score(player1, player2)

	# end

	def finsh?
		return true if @rounds == 0
		false
	end

	# def winner
	

	# end

	







end