def fibonacci n
	pos = n.positive? ? 1 : -1
	@fib_hash[n] = (-1..1).include?(n)? n.abs : pos*fibonacci(n-1*pos) + fibonacci(n-2*pos) if !@fib_hash[n]
	@fib_hash[n]
end
@fib_hash = Hash.new
puts fibonacci(ARGV[0].to_i)