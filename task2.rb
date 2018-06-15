def f(n,f_hash)
	if f_hash[n]
		f_hash[n]
	elsif n.negative?
		f_hash[n] = f(n+2,f_hash) - f(n+1,f_hash)
	else
		f_hash[n] = f(n-2,f_hash) + f(n-1,f_hash)	
	end
end
puts f(ARGV[0].to_i,{0 => 0, 1 => 1, 2 => 1})