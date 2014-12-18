require 'sinatra/base'

class RockPaperScissorsSinatra < Sinatra::Base

	set :views, Proc.new {File.join(root, '..', 'views')}

	get '/' do
		erb :index
	end

	# start sever if ruby file executed
	run! if app_file == $0

end