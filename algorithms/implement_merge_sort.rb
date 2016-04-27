def merge(array, x, q, r)
  lowHalf = []
  highHalf = []
  k = x
  i = 0
  j = 0
  while k <= q
    lowHalf[i] = array[k]
    i+=1
    k+=1
  end
  while k <= r
    highHalf[j] = array[k]
    j+=1
    k+=1
  end

  k = x
  i = 0
  j = 0
  while( i < lowHalf.length && j < highHalf.length)
    if lowHalf[i] < highHalf[j]
      array[k] = lowHalf[i]
      i+=1
    else
      array[k] = highHalf[j]
      j+=1
    end
    k+=1
  end

  while(i < lowHalf.length)
    array[k] = lowHalf[i]
    i+=1
    k+=1
  end

  while(j < highHalf.length)
    array[k] = highHalf[j]
    j+=1
    k+=1
  end
  array
end

array = [3, 7, 12, 14, 2, 6, 9, 11]

p merge(array, 0, ((0 + array.length-1) / 2).to_i, array.length-1)
