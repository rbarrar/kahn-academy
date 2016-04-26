def factorial(n)
  result = 1
  i = 1
  while i <= n
    result = result * i
    i += 1
  end
  p result
end

factorial(5)
factorial(0)
