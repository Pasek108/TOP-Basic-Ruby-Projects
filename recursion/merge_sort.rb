# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length == 1

  left = arr.slice(0, arr.length / 2)
  right = arr[(arr.length / 2)..]

  merge(merge_sort(left), merge_sort(right))
end

def merge(arr1, arr2)
  arr1_i = 0
  arr2_i = 0
  new_arr = []

  (arr1.length + arr2.length).times do
    if arr1_i >= arr1.length
      new_arr << arr2[arr2_i]
      arr2_i += 1
      next
    end

    if arr2_i >= arr2.length
      new_arr << arr1[arr1_i]
      arr1_i += 1
      next
    end

    if arr1[arr1_i] <= arr2[arr2_i]
      new_arr << arr1[arr1_i]
      arr1_i += 1
      next
    end

    if arr2[arr2_i] <= arr1[arr1_i]
      new_arr << arr2[arr2_i]
      arr2_i += 1
      next
    end
  end

  new_arr
end
