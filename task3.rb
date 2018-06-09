str = ARGV[0].scan(/\w/).join
a = str.scan(/[aeiou]/i).join
b = str.scan(/[^aeiou\d]/i).join
c = str.scan(/\d/).join
puts ("#{a}" + (b.empty? ? '': ' ') + "#{b} #{c}").strip