f = inline('x.^5 - 4*x + 2', 'x');
x = bisection(f, 0, 1, 1e-6, 1);
disp(x);