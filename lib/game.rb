class Game

	attr_accessor :player1, :computer

	def initialize 
		@player1 = nil
		@computer = nil
	end

	@defeats = { rock: :scissors, paper: :rock, scissors: :paper }
	@throws = @defeat.keys

	def random_throw
		@throws.sample
	end

	def winner
		if player_throw == computer_throw
			"You tied with the computer. Try again!"
		elsif computer_throw == @defeat[player_throw]
			"Nicely done; #{player_throw} beats #{computer_throw!}"
		else
			"Ouch; #{computer_throw} beats #{player_throw}. Better luck next time."
		end
	end

end