require 'sinatra/base'

class RockPaperScissor < Sinatra::Base

	get '/' do
		"Hello RPS!"
	end

	# start sever if ruby file executed
	run! if app_file == $0

end