function [x, r, it]=sor(A, b, x0, maxit, tol,w)

 n = length(A(1,:));
 x = x0; # debe inicializarse x
 it = 0;
 while ( it < maxit )
 for i = 1:n
 x(i) = (1-w)*x0(i)+ w * ( b(i) - A(i,1:i-1)*x(1:i-1) - A(i,i+1:n)*x0(i+1:n) ) / A(i,i);
 endfor
 r(it+1) = norm(A*x - b); # norm(x-x0)
 if r(it+1) < tol %then
 break;
 endif
 x0 = x;
 it = it +1;
 endwhile
 endfunction