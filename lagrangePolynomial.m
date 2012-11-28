function p = lagrangePolynomial( X, Y )
%LAGRANGEPOLYNOMIAL Compute the lagrange polynomial over the given nodes 
%(X, Y)
    p = 0;
    for i = 1:length(X)
        li = lagrangeBasisPolynomial(X, i);
        p = p + li*Y(i);
    end
    p = matlabFunction(p);
end

function li = lagrangeBasisPolynomial(X, i)
    syms x;
    
    li = 1;
    for j = 1:length(X)
        if i ~= j
            li = li * (x - X(j)) / (X(i) - X(j));
        end
    end
end