str = ARGV.join
vowels = str.scan(/[AaEeIiOoUu]/)
digits = str.scan(/\d/)
consonant = str.scan(/\w/) - vowels - digits
puts vowels.join + (consonant.length > 0 ? ' ' + consonant.join : '') + (digits.length > 0 ? ' ' + digits.join : '')