class Player

	attr_reader :name, :choices
	attr_accessor :choice

	def initialize(name)
		@name = name
		@choices = ['rock', 'paper', 'scissors']
	end

	def choose(option)
		@choice = @choices.select{ |element| element == option }
	end


end