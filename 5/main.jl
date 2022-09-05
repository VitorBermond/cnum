using LinearAlgebra

erro = 10^-3

function jacobi(A, B, k)
  n = size(B, 1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = 0
      for j = 1:n
        if i != j
        count += A[i, j]*X[j]
      end
    end
    K[i] = (B[i]-count)/A[i, i]
  end

  if norm(X-K) < erro
    break
  end
  X = copy(K)
end
return X
end

println("\n4.7.2\n")

A = [5 1 1;
     -1 3 -1;
     1 2 10]

B = [50; 10; -30]

X = A \ B
println(X)

X = jacobi(A, B, 10)
println(X)

println("\n4.7.5\n")

A = [4 0 1;
     1 10 3;
     2 1 4]

B = [6; 27; 12]

X = A \ B
println(X)

X = jacobi(A, B, 10)
println(X)

println("\n4.9.1\n")

A = [4 0  1;
     1 10 3;
     2 1  4]

B = [6; 27; 12]

X = A \ B
println(X)

X = jacobi(A, B, 10)
println(X)