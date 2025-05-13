# frozen_string_literal: true

require_relative 'fibbonaci'
require_relative 'merge_sort'

puts 'Fibbonaci iterative'
9.times { |i| puts "#{i}. #{fibs(i)}" }
puts ''

puts 'Fibbonaci recursive'
9.times { |i| puts "#{i}. #{fibs_rec(i)}" }
puts ''

puts 'Merge sort'
arr = [3, 2, 1, 13, 8, 5, 0, 1]
sorted_arr = merge_sort(arr)
puts arr.to_s
puts sorted_arr.to_s
puts ''

arr = [105, 79, 100, 110]
sorted_arr = merge_sort(arr)
puts arr.to_s
puts sorted_arr.to_s
puts ''
