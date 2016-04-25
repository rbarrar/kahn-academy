def index_of_minimum(array, start_index)
  min_value = array[start_index]
  min_index = start_index
  index_counter = min_index + 1
  while index_counter < array.length do
    if array[index_counter] < min_value
      min_index = index_counter
      min_value = array[index_counter]
    end
    index_counter += 1
  end
  min_index
end

def swap (array, first_index, second_index)
  temp = array[first_index]
  array[first_index] = array[second_index]
  array[second_index] = temp
end

def selected_sort(array)
  index_value = 0
  i = 0
  while i < array.length do
    index_value = index_of_minimum(array, i)
    swap(array, index_value, i)
    i += 1
  end
  p array
end

array = [22, 11, 99, 88, 9, 7, 42]
selected_sort(array)
