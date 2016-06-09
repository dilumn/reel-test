require "celluloid/current"

class ActorMock
include Celluloid

	def test1
		puts "test1 started"
		async.test2
		60000.downto(1).inject(:*)
	end

	def test2
		puts "test2 started"
		50000.downto(1).inject(:*)
	end

end