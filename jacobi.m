function x = jacobi( A, b, x0, numIters )
%JACOBI Implementation of the Jacobi method
    I = eye(size(A));
    D = I.*A;
    R = A - D;
    
    x = x0;
    for i = 1:numIters
        x = D\(b - R*x);
    end
end

