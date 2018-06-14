a = ARGV[0].scan(/[aeiouy]/i).join
b = ARGV[0].scan(/[^aeiouy\d\W]/i).join
c = ARGV[0].scan(/\d/).join
puts ("#{a}" + (b.empty? ? '': ' ') + "#{b} #{c}").strip