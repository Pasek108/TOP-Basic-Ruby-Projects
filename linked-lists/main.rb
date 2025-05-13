# frozen_string_literal: true

require_relative 'LinkedList'

list = LinkedList.new

puts 'Empty list'
puts list
puts ''

puts 'Add: dog, cat, parrot, hamster, snake, turtle'
list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
puts list # nil <- ( dog ) <-> ( cat ) <-> ( parrot ) <-> ( hamster ) <-> ( snake ) <-> ( turtle ) -> nil
puts ''

puts 'Prepend: pig'
list.prepend('pig')
puts list # nil <- (pig) <-> ( dog ) <-> ( cat ) <-> ( parrot ) <-> ( hamster ) <-> ( snake ) <-> ( turtle ) -> nil
puts ''

puts 'List size, head value and tail value'
puts list.size
puts list.head.value
puts list.tail.value
# 7, pig, turtle
puts ''

puts 'Elements at: 0, 2, 6, 7, 9'
puts list.at(0).value
puts list.at(2).value
puts list.at(6).value
puts list.at(7)&.value || 'nil'
puts list.at(9)&.value || 'nil'
# pig, cat, turtle, nil, nil
puts ''

puts 'Pop the list'
list.pop
puts list # nil <- (pig) <-> ( dog ) <-> ( cat ) <-> ( parrot ) <-> ( hamster ) <-> ( snake ) -> nil
puts ''

puts 'Shift the list'
list.shift
puts list # nil <- ( dog ) <-> ( cat ) <-> ( parrot ) <-> ( hamster ) <-> ( snake ) -> nil
puts ''

puts 'Check if list contains: dog, sheep, something starting with \'ham\''
puts list.contains?('dog')
puts list.contains?('sheep')
puts (list.contains? { |val| val[0..2] == 'ham' })
# true, false, true
puts ''

puts 'Find index of elements: dog, sheep, something starting with \'ham\''
puts list.find('dog')
puts list.find('sheep') || 'nil'
puts (list.find { |val| val[0..2] == 'ham' })
# 0, nil, 3
puts ''

puts 'Insert \'sheep\' at index 2'
list.insert_at('sheep', 2)
puts list # nil <- ( dog ) <-> ( cat ) <-> ( sheep ) <-> ( parrot ) <-> ( hamster ) <-> ( snake ) -> nil
puts ''

puts 'Remove index 2'
list.remove_at(2)
puts list # nil <- ( dog ) <-> ( cat ) <-> ( parrot ) <-> ( hamster ) <-> ( snake ) -> nil
puts ''
