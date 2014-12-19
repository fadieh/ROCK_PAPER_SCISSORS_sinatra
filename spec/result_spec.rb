require './lib/game.rb'

describe 'Result' do

	let (:game) { Game.new }

	context 'COMPUTER TAKING A TURN' do

		it "should generate a choice for the computer" do
			game.random_throw!
			expect(game.computerchoice).not_to eq(nil)
		end

	end

	context 'WINNING TURNS' do

		it "your rock should beat computer's scissors" do
			game.playerchoice = 'rock'
	    	game.computerchoice = 'scissors'
	    	expect(game.winner).to eq("Nicely done; rock beats scissors!")
		end

		it "your paper should beat rock's rock" do
			game.playerchoice = 'paper'
	    	game.computerchoice = 'rock'
	    	expect(game.winner).to eq("Nicely done; paper beats rock!")
		end

		it "your scissors should beat computer's paper" do
			game.playerchoice = 'scissors'
	    	game.computerchoice = 'paper'
	    	expect(game.winner).to eq("Nicely done; scissors beats paper!")
		end

	end

	context 'LOSING TURNS' do

		it "your rock will be beaten by computer's paper" do
			game.playerchoice = 'rock'
	    	game.computerchoice = 'paper'
	    	expect(game.winner).to eq("Ouch; paper beats rock. Better luck next time.")
		end

		it "your paper will be beaten by computer's scissors" do
			game.playerchoice = 'paper'
	    	game.computerchoice = 'scissors'
	    	expect(game.winner).to eq("Ouch; scissors beats paper. Better luck next time.")
		end

		it "your scissors will be beaten by computer's rock" do
			game.playerchoice = 'scissors'
	    	game.computerchoice = 'rock'
	    	expect(game.winner).to eq("Ouch; rock beats scissors. Better luck next time.")
		end

	end

	context 'DRAWING TURNS' do

		it "rock should tie with rock" do
			game.playerchoice = 'rock'
	    	game.computerchoice = 'rock'
	    	expect(game.winner).to eq("You tied with the computer. Try again!")
		end

		it "paper should tie with paper" do
			game.playerchoice = 'paper'
			game.computerchoice = 'paper'
			expect(game.winner).to eq("You tied with the computer. Try again!")
		end

		it "scissors should tie with scissors" do
			game.playerchoice = 'scissors'
			game.computerchoice = 'scissors'
			expect(game.winner).to eq("You tied with the computer. Try again!")
		end

	end

end