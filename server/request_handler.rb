require_relative "actor_mock"

class RequestHandler

	def add
		@actor = ActorMock.new
		@actor.async.test1
	end

end