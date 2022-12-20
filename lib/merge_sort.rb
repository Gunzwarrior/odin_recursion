# frozen_string_literal: true

array = [1, 3, 9, 2, 4, 5, 8, 6, 7]

def merge_sort(array)
  left_half_array = array[0..(array.length / 2 - 1)]
  right_half_array = array[(array.length / 2)..]
  left_half_array = merge_sort(left_half_array) if left_half_array.length > 1
  right_half_array = merge_sort(right_half_array) if right_half_array.length > 1

  sorted_array = []
  i_left = 0
  i_right = 0
  i_sorted = 0
  until i_left == left_half_array.length || i_right == right_half_array.length
    if left_half_array[i_left] < right_half_array[i_right]
      sorted_array[i_sorted] = left_half_array[i_left]
      i_left += 1
    else
      sorted_array[i_sorted] = right_half_array[i_right]
      i_right += 1
    end
    i_sorted += 1
  end

  if i_left == left_half_array.length
    sorted_array[i_sorted..(left_half_array.length - 1 + right_half_array.length - 1)] =
      right_half_array[i_right..right_half_array.length - 1]
  else
    sorted_array[i_sorted..(left_half_array.length - 1 + right_half_array.length - 1)] =
      left_half_array[i_left..left_half_array.length - 1]
  end
  sorted_array
end

p merge_sort(array)
