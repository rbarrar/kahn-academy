def swap(array, first_index, second_index)
  temp = array[first_index]
  array[first_index] = array[second_index]
  array[second_index] = temp
end

def partition(array, x, r)
  q = x
  j = x
  while j < r
    j += 1
    if array[j] <= array[r]
      swap(array, j, q)
      q += 1
    end
  end
  swap(array, r, q)
  p array
end

array = [9, 7, 5, 11, 12, 2, 14, 3, 10, 4, 6]
p partition(array, 0, array.length-1)
