class Game

	attr_accessor :playerchoice, :computerchoice

	def initialize 
		@playerchoice = nil # rock
		@computerchoice = nil
	end

	def random_throw!
		@computerchoice = ["rock", "paper", "scissors"].sample
	end

	def winner

		defeats = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }

		if playerchoice == computerchoice
			"You tied with the computer. Try again!"
		elsif defeats[playerchoice] == computerchoice
			"Nicely done; #{playerchoice} beats #{computerchoice}!"
		else
			"Ouch; #{computerchoice} beats #{playerchoice}. Better luck next time."
		end
	end

end