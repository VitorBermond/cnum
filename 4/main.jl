using .MathConstants:e

error = 0.0001

f1(x) = (e^x)-x-2

function fixedpoint(a,g)
  x=g(a)
  while abs(x-a) > error
    a = x
    x = g(a)
  end
  return x
end

println(" Ex 3.3.1")

g(x) = (e^x)-2
r = fixedpoint(1,g)
println(r)

println(" Ex 3.4.1")

