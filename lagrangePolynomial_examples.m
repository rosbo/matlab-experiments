clear all; close all;
f = @(x) x.^5 - 4*x.^4 - 2*x;
D = [- 6, 6];
hold on;
ezplot(f, D);

% Lagrange polynomial with 3 nodes
x = [-4; 0; 4];
p = lagrangePolynomial(x, f(x));
line1 = ezplot(p, D);
set(line1, 'Color', 'red');
plot(x, f(x), 'o', 'MarkerEdgeColor', 'r', 'MarkerSize', 10);

% Lagrange polynomial with 5 nodes
x = [-4; -2; 0; 2; 4];
p = lagrangePolynomial(x, f(x));
line2 = ezplot(p, D);
set(line2, 'Color', 'g');
disp('Click on any button to show the nodes for the other polynomial');
pause;
plot(x, f(x), 'o', 'MarkerEdgeColor', 'g', 'MarkerSize', 10);

hold off;