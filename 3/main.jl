f1(x) = sqrt(x) - cos(x)                       #3.2.1
f2(x) = 5*sin(x^2) - MathConstants.e^(x/10)    #3.2.2

vt = ((1.380649 * 10^-23)*300)/(1.6 * 10^-19)
f3(x) = (10^-12) * (MathConstants.e^(x/vt) - 1)                    #3.2.8

erro = 10^-5

function bissecao(a,b,f)
  x = (a+b/2)
  while abs(f(x)) > erro
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  return x
end

println("\n 3.2.2 \n")

r = bissecao(0, 1, f1)
println(r)

println("\n 3.2.2 \n")

r = bissecao(0, 1, f2)
println(r)
r = bissecao(1, 2, f2)
println(r)
r = bissecao(2, 2.002, f2)
println(r)

println("\n 3.2.8 \n")



r = bissecao(-2, 1, f3)
println(r)