function [ tn, yn ] = euler( f, t0, tEnd, y0, N )
%EULER Implementation of the Euler method
    
    % Current solution
    t = t0;
    y = y0;
    
    % Store solution
    tn = t0;
    yn = y0;
    
    % Compute step size
    h = (tEnd - t0)/N;
    
    for i = 1:N
        y = y + h*f(t, y);
        t = t + h;
        
        % Store solution
        tn = [tn, t];
        yn = [yn, y];
    end
end

