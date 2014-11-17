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

	def choose
		@choice = @choices.sample
	end

	def update_round(logic, player1, player2)
		logic.result(player1, player2) 
		@rounds -= 1 if @rounds > 0
		#call the update score here
	end

	# def update_score(player1, player2)
		#@temp = logic.result(player1, player2)
		#if @temp[0] == player1.choice[0]
		# return "The winner of this round is #{player1.name}"
		#elsif @temp[0] == player2.choice[0]
		#return "The winner of this round is #{player1.name}"
	# end

	def finish?
		return true if @rounds == 0
		false
	end

	# def winner
	# @players.select{|player| player.score == 3 }	

	# end

	







end