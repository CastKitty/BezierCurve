function drawbeziercurve(M)
for i = 1:1:length(M)
    plot(M(i,1),M(i,2),'x');
    xlim([-3 7])
    axis equal
    hold on;
end


[xt,yt]=beziercurve(M);
x = zeros(101,1);
y = zeros(101,1);
t = 0.00:0.01:1;
    
for i = 1:1:101
x(i) = xt(t(i));
y(i) = yt(t(i));
end

for i = 1:1:101
plot(x(i),y(i),'.');
hold on;
end


