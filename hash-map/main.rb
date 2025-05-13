# frozen_string_literal: true

require_relative 'HashMap'

hash_map = HashMap.new

puts 'Empty HashMap'
puts hash_map.entries.to_s
puts ''

puts 'Add key-value pairs: apple (red), banana (yellow), carrot (orange), dog (brown), elephant (gray), frog (green), grape (purple), hat (black), ice cream (white), jacket (blue), kite (pink), lion (golden)'
hash_map.set('apple', 'red')
hash_map.set('banana', 'yellow')
hash_map.set('carrot', 'orange')
hash_map.set('dog', 'brown')
hash_map.set('elephant', 'gray')
hash_map.set('frog', 'green')
hash_map.set('grape', 'purple')
hash_map.set('hat', 'black')
hash_map.set('ice cream', 'white')
hash_map.set('jacket', 'blue')
hash_map.set('kite', 'pink')
hash_map.set('lion', 'golden')
puts hash_map.entries.to_s
puts ''

puts 'Display current capacity'
puts hash_map.capacity
puts ''

puts 'Update: Change value for apple to green'
hash_map.set('apple', 'green')
puts hash_map.entries.to_s
puts ''

puts 'Add new key-value pair: moon (silver)'
hash_map.set('moon', 'silver')
puts 'Current capacity:'
puts hash_map.capacity
puts 'Current entries.to_s:'
puts hash_map.entries.to_s
puts ''

puts 'Retrieve values for specific keys'
puts "Value for 'hat': #{hash_map.get('hat') || 'nil'}"
puts "Value for 'bat': #{hash_map.get('bat') || 'nil'}"
puts ''

puts 'Check existence of keys'
puts "Has key 'hat'? #{hash_map.has?('hat')}"
puts "Has key 'bat'? #{hash_map.has?('bat')}"
puts ''

puts 'Remove key: hat'
puts hash_map.remove('hat') || 'nil'
puts "Has key 'hat' after removal? #{hash_map.has?('hat')}"
puts ''

puts 'HashMap properties: length, keys, and values'
puts "Length: #{hash_map.length}"
puts "Keys: #{hash_map.keys}"
puts "Values: #{hash_map.values}"
puts ''

puts 'Clear the HashMap'
hash_map.clear
puts hash_map.entries.to_s
puts ''
