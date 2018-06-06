str = ARGV[0].gsub(/\W/,'')

a = str.scan(/[aeiou]/i).join
b = str.scan(/[^aeiou\d\W]/i).join
c = str.scan(/\d/).join

puts ("#{a}" + (b.empty? ? '': ' ') + "#{b} #{c}").strip