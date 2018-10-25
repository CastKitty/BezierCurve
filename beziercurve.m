function [x,y]=beziercurve(M)
N = length(M)-1;

for i = 1:1:length(M)
b{i} = bernsteinpolynomial(i-1,N);
end
x = @(t) 0*t
for i = 1:1:length(M)
x = @(t) M(i)*b{i}(t)+x(t)
end

y = @(t) 0*t
for i = 1:1:length(M)
y = @(t) M(i,2)*b{i}(t)+y(t)
end


