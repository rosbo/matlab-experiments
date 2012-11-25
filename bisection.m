function x = bisection( f, a, b, tolerance, drawPlot )
%BISECTION Implementation of the bisection method for root-finding
    deltaX = (b - a) / 100;    
    x = a: deltaX : b;

    if drawPlot
        hold on;
        grid on;
        plot(x, f(x));
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
        
        if drawPlot
            plot(x, f(x), '*', 'MarkerEdgeColor', 'red', 'MarkerFaceColor', 'red');   
        end
    end
       
    if drawPlot
        % Final approximation
        plot(x, f(x), '+', 'MarkerEdgeColor', 'green', 'MarkerFaceColor', 'green');
        hold off;
    end
end

