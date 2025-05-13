# frozen_string_literal: true

def bubble_sort(array)
  new_arr = array.clone

  new_arr.each_with_index do |_, i|
    new_arr.each_with_index do |_, j|
      next unless new_arr[i] < new_arr[j]
      new_arr[i], new_arr[j] = new_arr[j], new_arr[i]
    end
  end

  new_arr
end

arr = [4, 3, 78, 2, 0, 2]
sorted_arr = bubble_sort(arr)

puts "#{arr} <- Array"
puts "#{sorted_arr} <- Sorted Array"
