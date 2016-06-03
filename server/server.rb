require 'reel'
require_relative "request_handler"

class Server
EXTRA_HEADERS = { :'Access-Control-Allow-Origin' => '*' }

	def initialize
		request_handler = RequestHandler.new

		Reel::Server::HTTP.run('127.0.0.1', 3001) do |connection|
			connection.each_request do |request|

				case request.path
				when "/addNode"
					request_handler.add
				else
					puts "NO nodes"
				end
				
				request.respond :ok, EXTRA_HEADERS, "ok"
			end
		end
	end

end

server = Server.new
