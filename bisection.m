function [x, xi] =  bisection( f, a, b, tolerance )
%BISECTION Implementation of the bisection method for root-finding    
    % Test zero
    if f(a) * f(b) >= 0 
        disp(strcat('Not sure if there''s a zero in the interval [', num2str(a), ',', num2str(b), ']'));
    end
    
    i = 1;
    while abs(b-a) >= tolerance
        x = (a + b) / 2;
        
        if f(x) * f(a) <= 0
            b = x;
        else
            a = x;
        end
        
        xi(i) = x;
        i = i + 1;
    end
end

