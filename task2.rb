def f n
	f0 = 0
	f1 = 1
	f2 = 1
	fi = 0

	if (1..2).include?(n)
		fi = 1
	elsif n.negative?
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

puts f(ARGV[0].to_i)