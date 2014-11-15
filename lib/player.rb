class Player

	attr_reader :name
	attr_accessor :choices

	def initialize(name)
		@name = name
		@choices = ['rock', 'paper', 'scissors']
	end

	def choose(option)
		@choices.select{ |element| element == option }
	end


end