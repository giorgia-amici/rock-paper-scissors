require './game'
require './player'
require './logic'

@giorgia = Player.new('gio')
@pablo = Player.new('bubu')
@logic = Logic.new
@game = Game.new





	def play(player1, player2)
		@temp = self.result(player1, player2)
		@temp[0] == player1.choice[0] ? player1.score += 1 : player2.score += 1
	end