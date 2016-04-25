def swap (array, first_index, second_index)
  temp = array[first_index]
  array[first_index] = array[second_index]
  array[second_index] = temp
  p array
end

test_array = [7, 9, 4]
swap(test_array, 0, 1)
