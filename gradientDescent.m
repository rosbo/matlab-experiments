function [xmin, xi] = gradientDescent( f, x0, alpha, tolerance)
% Implementation of Gradient Descent to find approximation of local minima.
    flag = true;    
    xmin = x0;
    xi(1, :) = xmin';
    i = 2;
    while flag == true
        u = -subs(gradient(f), symvar(f), xmin);
        newxmin = xmin + alpha * u;
        
        
        if norm(u) < tolerance || subs(f, symvar(f), newxmin) >= subs(f, symvar(f), xmin)
            flag = false;
        end
        
        xi(i, :) = newxmin';
        xmin = newxmin;
        i = i + 1;
    end
end