% 2-D Gradient descent example
clear all; close all;

syms x1 x2;
f = -(1/sqrt(2*pi))*exp(-(x1.^2 + x2.^2)/2);
[xmin, xi] = gradientDescent(f, [-1; -1], 2, 1e-3);
disp(xmin);
disp(subs(f, symvar(f), xmin));

X = 0:0.01:3;
hold on;
grid on;
% Draw function
ezcontour(f, [-3 3]);

% Draw the minima approximation after each iteration
for i = 1:length(xi)-1
    x = xi(i, :);    
    plot(x(1), x(2), '*', 'MarkerEdgeColor', 'red', 'MarkerFaceColor', 'red');    
end

% Draw the final approximation
plot(xmin(1), xmin(2), '+', 'MarkerEdgeColor', 'green', 'MarkerFaceColor', 'green');

hold off;