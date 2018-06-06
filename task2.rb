n = ARGV[0].to_i.abs
fib_array = [0,1]
2.upto(n) {|i| fib_array[i] = fib_array[i-1] + fib_array[i-2] }
puts ARGV[0].to_i.positive?||n.odd? ? fib_array[n] : -fib_array[n]