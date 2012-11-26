% 2-D Newton method example
clear all; close all;

syms x1 x2;
f = [x1.^2 + x2.^2 - 1; x1.^3 - x2];

[zero, xi] = newton(f, [0.5; 0.5], 10);
disp(zero);

hold on;
grid on;
rotate3d on;
% Draw first function surface
ezsurf(f(1), [0 1]);
% Draw second function surface
ezsurf(f(2), [0 1]);
% Draw z=0 plane
[X, Y] = meshgrid(0:0.1:3);
surf(X, Y, 0*X);

% Draw the zero approximation after each iteration
for i = 1:length(xi)-1
    x = xi(i, :);    
    plot3(x(1), x(2), subs(f(1), symvar(f), x), '*', 'MarkerEdgeColor', 'blue', 'MarkerFaceColor', 'blue');    
end

% Draw the final approximation
plot3(zero(1), zero(2), 0, '+', 'MarkerEdgeColor', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', 10);
hold off;