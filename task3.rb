# puts (ARGV[0].scan(/[aeiou]/i)+[' ']+ARGV[0].scan(/[^aeiou\d\W]/i)+[' ']+ARGV[0].scan(/\d/)).join.strip