function [ x, xi ] = newton( f, x0, numIters)
% Implementation of the Newton method for finding approximations of the
% roots of the function

    %1D case
    if length(f) == 1
        [x, xi] = newton1D(f, x0, numIters);
    else
        [x, xi] = newtonMultiD(f, x0, numIters);
    end   
end

function [ x, xi ] = newton1D(f, x0, numIters)
    fd = diff(f);

    x = x0;
    xi = zeros(numIters, 1);

    for i = 1:numIters
        x = x - subs(f, symvar(f), x)/subs(fd, symvar(f), x);
        xi(i) = x;
    end
end

function [ x, xi ] = newtonMultiD(f, x0, numIters)   
    J = jacobian(f, symvar(f));    
    x = x0;
    xi = zeros(numIters, length(f));
    
    if det(J) == 0
        disp('The determinant of the Jacobian is equal to 0');
    else
        for i = 1:numIters
            x = x - inv(subs(J, symvar(J), x))*subs(f, symvar(f), x);
            xi(i, :) = x';
        end
    end
end