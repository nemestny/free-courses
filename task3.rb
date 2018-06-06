str = ARGV[0].gsub(/\W/,'')
a = ''
b = ''
c = ''

str.each_char do |char| 
	if "AaEeIiOoUu".include? char
		a = a + char
	elsif char.gsub(/\d/,'') == ''  
		c = c + char
	else
		b = b + char
	end
end

puts ("#{a}" + (b.empty? ? '': ' ') + "#{b} #{c}").strip