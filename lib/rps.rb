require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissorsSinatra < Sinatra::Base

	set :views, Proc.new {File.join(root, '..', 'views')}

	get '/' do
		erb :index
	end

	post '/' do

	end

	post '/game' do
		@player1 = params[:p1_name]
		erb :game
	end

	post '/result' do
		
	end

	# start sever if ruby file executed
	run! if app_file == $0

end