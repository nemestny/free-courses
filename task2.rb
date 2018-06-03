n = ARGV[0].to_i.abs
pos = ARGV[0].to_i.positive? ? 1 : -1
fib_array = [0,1]
2.upto(n) {|i| fib_array[i] = fib_array[i-1] + fib_array[i-2] }
puts fib_array[n]*pos