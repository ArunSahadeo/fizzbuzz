require_relative '../fizzbuzz.rb'

describe 'fizzbuzz' do
	it 'returns "Fizz" when passed 6' do
		expect do
			fizzbuzz = FizzBuzz.new(6)
			fizzbuzz.iterate_over_range()
		end.to output("Fizz\n").to_stdout
	end
	
	it 'returns "Buzz" when passed 10' do
		expect do
			fizzbuzz = FizzBuzz.new(10)
			fizzbuzz.iterate_over_range()
		end.to output("Buzz\n").to_stdout
	end

	it 'returns "FizzBuzz" when passed 15' do
		expect do
			fizzbuzz = FizzBuzz.new(15)
			fizzbuzz.iterate_over_range()
		end.to output("FizzBuzz\n").to_stdout
	end

	it 'returns 1 when passed 1' do
		expect do
			fizzbuzz = FizzBuzz.new(1)
			fizzbuzz.iterate_over_range()
		end.to output("1\n").to_stdout
	end
end	
