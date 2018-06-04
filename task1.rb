str = ARGV.join.gsub(/\W/,'')
puts str.casecmp(str.reverse) == 0 ? 'YES' : 'NO'