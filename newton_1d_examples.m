% 1-D Newton method example
clear all; close all;

syms x;
f = x.^5 - 4*x + 2;
[zero, xi] = newton(f, 0.8, 10);
disp(zero);

X = 0:0.01:1;
hold on;
grid on;
% Draw function
ezplot(f, X);
% Draw zero line
line([0, 1], [0, 0], 'Color', 'yellow');

% Draw the zero approximation after each iteration
for i = 1:length(xi)-1
    x = xi(i);    
    plot(x, subs(f, x), '*', 'MarkerEdgeColor', 'red', 'MarkerFaceColor', 'red');    
end

% Draw the final approximation
plot(zero, subs(f, zero), '+', 'MarkerEdgeColor', 'green', 'MarkerFaceColor', 'green');
hold off;
