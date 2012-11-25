function x = bisection( f, a, b, tolerance, drawPlot )
%BISECTION Implementation of the bisection method for root-finding
    deltaX = (b - a) / 100;    
    x = a: deltaX : b;
    
    if drawPlot == 1
        plot(x, f(x));
        hold on;
    end
    
    % Test zero
    if f(a) * f(b) >= 0 
        disp(strcat('Not sure if there''s a zero in the interval [', num2str(a), ',', num2str(b), ']'));
    end
    
    while abs(b-a) >= tolerance
        x = (a + b) / 2;
        
        if f(x) * f(a) <= 0
            b = x;
        else
            a = x;
        end
        
        plot(x, f(x), '*');   
    end
        
    hold off;
end

