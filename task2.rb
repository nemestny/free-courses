def f n, f_hash
	pos = n.positive? ? 1 : -1
	f_hash[n] ? f_hash[n] : f_hash[n] = f(n-2*pos,f_hash) + pos*f(n-1*pos,f_hash)
end
puts f(ARGV[0].to_i,{0 => 0, 1 => 1, 2 => 1})