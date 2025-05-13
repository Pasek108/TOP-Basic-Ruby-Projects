# frozen_string_literal: true

def caesar_cipher(text, shift)
  text.chars.map do |char|
    next char unless char.match?(/[[:alpha:]]/)

    start = char == char.upcase ? 'A' : 'a'
    shifted_char = (char.ord - start.ord + shift) % 26
    (shifted_char + start.ord).chr
  end.join('')
end

print 'Key:  5, '
print '\'What a string!\' -> '
puts caesar_cipher('What a string!', 5)

print 'Key: -5, '
print '\'Bmfy f xywnsl!\' -> '
puts caesar_cipher('Bmfy f xywnsl!', -5)
puts ''

print 'Key:  500, '
print '\'What a string!\' -> '
puts caesar_cipher('What a string!', 500)

print 'Key: -500, '
print '\'Cngz g yzxotm!\' -> '
puts caesar_cipher('Cngz g yzxotm!', -500)
puts ''
