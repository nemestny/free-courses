def f n
	f = [0,1,1]

	if (0..2).include?(n)
		f[n]
	elsif n.negative?
		-1.downto(n) do
			f[0] = f[1] - f[0]
			f[1] = f[1] - f[0]
		end
		f[0]
	else
		3.upto(n) do
			f[2] = f[2] + f[1]
			f[1] = f[2] - f[1]
		end
		f[2]
	end
end

puts f(ARGV[0].to_i)