function bisection(a,b)
  x = (a+b)/2
  while abs(f(x)) > error
    if f(a)*(fx) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end 
  return x 
end 