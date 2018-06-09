def f n
	pos = n.positive? ? 1 : -1
	(-1..1).include?(n)? n.abs : pos*f(n-1*pos) + f(n-2*pos)
end
puts f(ARGV[0].to_i)