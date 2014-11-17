class Player

	attr_reader :name, :choices
	attr_accessor :choice, :score

	def initialize(name)
		@name = name
		@choices = ['rock', 'paper', 'scissors']
		@score = 0
	end

	def choose(option)
		@choice = @choices.select{ |element| element == option }
		@choice = @choice[0]
	end


end