array = [1, 5, 6, 7, 8, 9, 2, 3]

def merge_sort(array)
  #take an array
  #divide it into halves
  #divide those halves into halves until having only
  #1 element in it
  left_half_array = array[0..(array.length/2-1)]
  right_half_array = array[(array.length/2)..]
  p left_half_array
  p right_half_array
  merge_sort(left_half_array) if left_half_array.length > 1
  merge_sort(right_half_array) if right_half_array.length > 1
  


  #when that's the case, merge the 2 arrays by sorting
  #the first numbers of the array and doing it until
  #one array is empty, then add the rest of the remaining
  #array to the array, and do that for every steps
  #then return the big sorted array
  array
end

p merge_sort(array)