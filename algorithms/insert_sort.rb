def insert(array, right_index, value)
  index = right_index
  while (index >= 0) && (value < array[index])
    array[index+1] = array[index]
    index -= 1
  end
  array[index+1] = value
  p array
end

array = [3, 5, 7, 11, 13, 2, 9, 6]
insert(array, 4, 2)
