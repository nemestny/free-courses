def f_recursive n, f_hash
	pos = n.positive? ? 1 : -1
	f_hash[n] ? f_hash[n] : f_hash[n] = f_recursive(n-2*pos,f_hash) + pos*f_recursive(n-1*pos,f_hash)
end

def f_bine n
	phi = (1 + 5**0.5)/2
	(phi**n-(-phi)**(-n))/(2*phi - 1)
end

def f_test n
	f0 = 0
	f1 = 1
	f2 = 1
	fi = 0
	if n.negative?
		-1.downto(n) do |i|
			fi = f1 - f0
			f1 = f0
			f0 = fi
		end
	else
		3.upto(n) do |i|
			fi = f2 + f1
			f1 = f2
			f2 = fi
		end
	end
	fi
end

puts f_recursive(ARGV[0].to_i,{0 => 0, 1 => 1, 2 => 1})

puts f_bine(ARGV[0].to_i).to_i

puts f_test(ARGV[0].to_i)