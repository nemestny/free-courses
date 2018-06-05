str = ARGV[0].gsub(/\W/,'')
puts str.casecmp(str.reverse) == 0 ? 'YES' : 'NO'