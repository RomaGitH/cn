warning: LF will be replaced by CRLF in 3/Jacobi.m.
The file will have its original line endings in your working directory
[1mdiff --git a/3/Jacobi.m b/3/Jacobi.m[m
[1mindex 69847ca..35fe737 100644[m
[1m--- a/3/Jacobi.m[m
[1m+++ b/3/Jacobi.m[m
[36m@@ -1,15 +1,23 @@[m
[31m-function [x, r, it]=Jacobi(A, b, x0, maxit, tol)[m
[32m+[m[32mfunction [x,it,r]=jacobi(A, b, x0, maxit, tol)[m
 [m
  % n = size(A,1);[m
  n = length(A(1,:));[m
  x = x0; # debe inicializarse x[m
[31m- it = 0;[m
[32m+[m[32m % soluciones[m
[32m+[m
[32m+[m[32m it = 1;[m
[32m+[m[32m xi=x0;[m
  while ( it < maxit )[m
  for i = 1:n[m
[31m- x(i) = ( b(i) - A(i,1:i-1)*x0(1:i-1) - A(i,i+1:n)*x0(i+1:n) ) / A(i,i);[m
[32m+[m[32m   x(i) = ( b(i) - A(i,1:i-1)*x0(1:i-1) - A(i,i+1:n)*x0(i+1:n) ) / A(i,i);[m
  endfor[m
[31m- r(it+1) = norm(A*x - b); # norm(x-x0)[m
[31m- if r(it+1) < tol %then[m
[32m+[m
[32m+[m[32m   r(it) = norm(x-xi,inf)/norm(xi,inf);[m
[32m+[m[32m   xi = x;[m
[32m+[m[32m  ## r(it)=norm(A*x - b); # norm(x-x0)[m
[32m+[m
[32m+[m
[32m+[m[32m if r(it) < tol %then[m
  break;[m
  endif[m
  x0 = x;[m
