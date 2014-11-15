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


	




end