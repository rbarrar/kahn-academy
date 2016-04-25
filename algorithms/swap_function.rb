def swap (array, firstIndex, secondIndex)
  temp = array[firstIndex]
  array[firstIndex] = array[secondIndex]
  array[secondIndex] = temp
  p array
end

testArray = [7, 9, 4]
swap(testArray, 0, 1)
