n = ARGV[0].to_i
i = 0
pos = n.positive? ? 1 : -1
fib_hash = Hash.new
loop do
	fib_hash[i] = (-1..1).include?(i)? i : fib_hash[i-1*pos] + fib_hash[i-2*pos]
	break if i == n
	i+=pos
end
puts fib_hash[n]