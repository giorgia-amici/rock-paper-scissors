class Game
	attr_accessor :players, :choice, :score
	attr_reader :choices

	def initialize
		@players = []
		@choices = ['rock', 'paper', 'scissors']
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

	#the choose method below applies only if there is only one player
	def choose
		@choice = @choices.sample if @players.size == 1
	end









end