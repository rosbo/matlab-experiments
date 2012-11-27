function [ x ] = gaussSeidel( A, b, x0, numIters )
%GAUSSSEIDEL Implementation of the Gauss-Seidel method
    Lstar = tril(A);
    U = A - Lstar;
    
    x = x0;
    for i = 1:numIters
        x = Lstar\(b - U*x);
    end
end

