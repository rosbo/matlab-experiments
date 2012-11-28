clear all; close all;
% IVP
f = @(t, y) -2*t*y;
t0 = 0;
tEnd = 1;
y0 = 1;

% Exact solution
yExact = @(t) exp(-t.^2);
ezplot(yExact, [0 1]);
hold on;

% Approximation using Euler with different step size
fprintf('Euler method\tError y(1)\n');
for i = 1:5
    if i > 1
        pause;
        delete(p); 
    end
    
    N = i*5;
    [tn, yn] = euler(f, t0, tEnd, y0, N);
    p = plot(tn, yn, 'Color', 'r'); 
    
    error = abs(yn(end) - yExact(1));
    fprintf('%2d steps\t%.6f\n', N, error); 
end

