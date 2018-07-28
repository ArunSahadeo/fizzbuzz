#!/usr/bin/env ruby

class FizzBuzz
	def	initialize(range = [])
		if range.is_a?(Integer)
			@range = Array.new(1, range)
		elsif array_holds_integers(range)
			@range = (range).to_a
		else
			@range = (1..100).to_a
		end
	end

	def iterate_over_range
		@range.each do |number|
			fizzbuzz_response(number)
		end
	end

	private

	def array_holds_integers(range)
		range = range.to_a

		unless range.length > 0
			return false
		end

		range.all? { |i| i.is_a?(Integer) }
	end

	def fizzbuzz_response(number)
		case
		when number % 3 == 0 && number % 5 == 0
			puts "FizzBuzz"	
		when number % 3 == 0 && number % 5 > 0
			puts "Fizz"
		when number % 3 > 0 && number % 5 == 0
			puts "Buzz"
		else
			puts number
		end
	end
end
