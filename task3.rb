vowels = ARGV[0].scan(/[AaEeIiOoUu]/)
digits = ARGV[0].scan(/\d/)
consonant = ARGV[0].scan(/\w/) - vowels - digits
puts vowels.join + (consonant.length > 0 ? ' ' + consonant.join : '') + (digits.length > 0 ? ' ' + digits.join : '')