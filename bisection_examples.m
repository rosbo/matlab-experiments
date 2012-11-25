clear all; close all;

f = inline('x.^5 - 4*x + 2', 'x');
[zero, xi] = bisection(f, 0, 1, 1e-6);
disp(zero);

x = 0:0.01:1;
hold on;
grid on;
plot(x, f(x)); 

for i = 1:length(xi)-1
    x = xi(i);
    
    plot(x, f(x), '*', 'MarkerEdgeColor', 'red', 'MarkerFaceColor', 'red');    
end

plot(zero, f(zero), '+', 'MarkerEdgeColor', 'green', 'MarkerFaceColor', 'green');
hold off;