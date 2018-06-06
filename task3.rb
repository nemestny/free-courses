str = ARGV[0].gsub(/\W/,'')
a = ''
b = ''
c = ''

str.each_char do |char| 
	# if "AaEeIiOoUu".include? char
	if char.gsub(/[aeiou]/i,'').empty?
		a = a + char
	elsif char.gsub(/\d/,'').empty?  
		c = c + char
	else
		b = b + char
	end
end

puts ("#{a}" + (b.empty? ? '': ' ') + "#{b} #{c}").strip