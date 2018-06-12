# def fibonacci(n,fib_hash = Hash.new)
# 	if fib_hash[n]
# 		fib_hash[n]
# 	elsif (-1..1).include?(n)
# 		fib_hash[n] = n.abs
# 	elsif n.positive?
# 		fib_hash[n] = fibonacci(n-2,fib_hash) + fibonacci(n-1,fib_hash)
# 	else
# 		fib_hash[n] = fibonacci(n+2,fib_hash) - fibonacci(n+1,fib_hash)	
# 	end
# end

# puts fibonacci(ARGV[0].to_i)