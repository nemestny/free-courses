str = ARGV.join
vowels = str.scan(/[AaEeIiOoUu]/)
digits = str.scan(/\d/)
consonant = str.scan(/\w/) - vowels - digits
output = vowels + (vowels.length > 0 && consonant.length > 0 ? [' '] + consonant : consonant)
output = output + (output.length > 0 && digits.length > 0 ? [' '] + digits : digits)
puts output.join