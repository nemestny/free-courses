n = ARGV[0].to_i.abs
pos = ARGV[0].to_i.positive? ? 1 : -1
fib_hash = Hash.new
0.upto(n) {|i| fib_hash[i] = i < 2 ? i : fib_hash[i-1] + fib_hash[i-2] }
puts fib_hash[n]*pos