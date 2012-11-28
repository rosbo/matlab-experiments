clear all; close all;
A = [2 1; 5 7];
b = [11; 13];

% Find exact solution to the equation : Ax = b
x = inv(A) * b;
disp('Exact solution:');
disp(x);

% Find a approximation using Jacobi method
x = jacobi(A, b, [0;0], 10);
disp('Jacobi approximated solution after 10 iterations');
disp(x);

x = jacobi(A, b, [0;0], 25);
disp('Jacobi approximated solution after 25 iterations');
disp(x);

% Find a approximation using Gauss-Seidel
x = gaussSeidel(A, b, [0;0], 10);
disp('Gauss-Seidel approximated solution after 10 iterations');
disp(x);

x = gaussSeidel(A, b, [0;0], 25);
disp('Gauss-Seidel approximated solution after 25 iterations');
disp(x);