% 1-D Gradient descent example
clear all; close all;

syms x;
f = x.^4 - 3*x.^3 + 2;
[xmin, xi] = gradientDescent(f, 0.5, 0.01, 1e-6);
disp(xmin);

X = 0:0.01:3;
hold on;
grid on;
% Draw function
ezplot(f, X);

% Draw the minima approximation after each iteration
for i = 1:length(xi)-1
    x = xi(i);    
    plot(x, subs(f, x), '*', 'MarkerEdgeColor', 'red', 'MarkerFaceColor', 'red');    
end

% Draw the final approximation
plot(xmin, subs(f, xmin), '+', 'MarkerEdgeColor', 'green', 'MarkerFaceColor', 'green');
hold off;