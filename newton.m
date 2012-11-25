function [ x, xi ] = newton( f, x0, numIters)
% Implementation of the Newton method for finding approximations of the
% roots of the function
syms x;
fd = inline(char(diff(f(x),sym('x'))),'x');

x = x0;
xi = zeros(numIters, 1);

for i = 1:numIters
    x = x - f(x)/fd(x);
    xi(i) = x;
end
end

