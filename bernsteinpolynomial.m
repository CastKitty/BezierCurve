function B=bernsteinpolynomial(i,N)
B = @(t) nchoosek(N,i)*(t^i)*(1-t)^(N-i);


