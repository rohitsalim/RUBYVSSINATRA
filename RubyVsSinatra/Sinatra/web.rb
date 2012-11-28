require "sinatra"
require "typhoeus"
require "json"


class App < Sinatra::Base
	get '/' do
		request1 = Typhoeus::Request.new("http://www.google.com",
                                :method        => :get
                               )
		hydra = Typhoeus::Hydra.new
		hydra.queue(request1);
		hydra.run

		response = request1.response;
		"It takes #{response.time} to call google.com"
	end
end