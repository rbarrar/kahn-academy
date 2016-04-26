def factorial(n)
  # base case
  if n == 0
    result = 1
  else
    result = factorial(n-1)*n
  end
end

p factorial(5)
p factorial(6)
