def f(n,f_hash = Hash.new)
	pos = n.positive? ? 1 : -1
	f_hash[n] = (-1..1).include?(n)? n.abs : f(n-2*pos,f_hash) + pos*f(n-1*pos,f_hash) if !f_hash[n]
	f_hash[n]
end
puts f(ARGV[0].to_i)