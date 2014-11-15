class Game
	attr_accessor :players
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
	
	def player_choice(player, choice)
		player.choose(choice)
	end

	def choose
		@choices.sample
	end






end