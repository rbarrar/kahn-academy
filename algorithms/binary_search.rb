primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
  41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

  def binary_search(array, targetValue)
    min = 0
    # max starts at 24 in this case
    max = array.length - 1
    guess = ((min+max)/2).to_i
    until min > max do
      guess = ((min+max)/2).to_i
      if array[guess] == targetValue
        puts "You have found #{targetValue} at index: #{guess}"
        break
      elsif array[guess] < targetValue
        min = (guess + 1)
      else
        max = (guess - 1)
      end
    end
  end

  binary_search(primes, 73)
  binary_search(primes, 97)
  binary_search(primes, 2)
