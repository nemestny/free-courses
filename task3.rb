vowels = ARGV[0].scan(/[AaEeIiOoUu]/)
digits = ARGV[0].scan(/\d/)
consonant = ARGV[0].scan(/\w/) - vowels - digits
puts vowels.join + ' ' + consonant.join + ' ' + digits.join