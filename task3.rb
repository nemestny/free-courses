a = ARGV[0].scan(/[aeiou]/i).join
b = ARGV[0].scan(/[^aeiou\d\W]/i).join
c = ARGV[0].scan(/\d/).join
puts ("#{a}" + (b.empty? ? '': ' ') + "#{b} #{c}").strip