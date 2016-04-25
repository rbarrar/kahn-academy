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

array = [18, 6, 66, 44, 9, 22, 14]

index = index_of_minimum(array, 2)

puts "The index of the minimum value of the subarray starting at index 2 is #{index}."
