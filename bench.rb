require "benchmark"

def activity_to_test(x)
	x*x
end

time = Benchmark.measure do
	(1..10000).each {|i| activity_to_test(i)}
end

puts time