# class Game

# 	attr_accessor :player1, :computer

# 	def initialize 
# 		@player1 = nil
# 		@computer = nil
# 	end

# 	wins = { rock: :scissors, paper: :rock, scissors: :paper }

# 	def has_player?
# 		@player1
# 	end

# 	def random_throw
# 		@computer = %w(:rock :paper :scissors).sample
# 	end

# 	def winner
# 		random_throw
# 		return "Draw" if player1.weapon == @computer
# 		WINS[player1.weapon] == computer ? 
# 	end

# end