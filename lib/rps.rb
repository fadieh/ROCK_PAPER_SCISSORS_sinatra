require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissorsSinatra < Sinatra::Base

	set :views, Proc.new {File.join(root, '..', 'views')}
	set :public_dir, Proc.new {File.join(root, '..', 'public')}
	set :public_folder, 'public'

	enable :sessions

	GAME = Game.new

	# Routing

	get '/' do
		erb :index
	end

	post '/game' do
		@player1 = params[:p1_name]
		erb :game
	end

	# get '/result' do
	
	# end

	post '/result' do
		@weapon1 = params[:weapon].to_s 
		GAME.playerchoice = @weapon1
		GAME.computerchoice = GAME.random_throw!
		erb :result
	end

	# start sever if ruby file executed
	run! if app_file == $0

end