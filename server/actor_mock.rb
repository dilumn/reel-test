require "celluloid/current"

class ActorMock
include Celluloid

	def test1
		puts "test1 started"
		async.test2
		50000.downto(1).inject(:*)
	end

	def test2
		puts "test2 started"
		async.test3
		50000.downto(1).inject(:*)
		test3
	end

	def test3
		puts "test3 started"
		async.test4
		50000.downto(1).inject(:*)
		test4
	end

	def test4
		puts "test4 started"
		async.test5
		50000.downto(1).inject(:*)
		test5
	end

	def test5
		puts "test5 started"
		50000.downto(1).inject(:*)
	end

end