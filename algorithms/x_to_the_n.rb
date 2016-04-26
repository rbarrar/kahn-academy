def power(x, n)
  if n == 0
    1
  elsif n < 0
    1 / power(x, -n)
  elsif n > 0 && n.even? == true
    y = power(x,n/2)
    y*y
  else
    power(x, n-1)*x.to_f
  end
end

p power(2,0)
