# c no es;
function [T, c, t] = to_gaussseidel(A,b)
  tic();
  U = triu(A,1);
  D = -diag(diag(A));
  L = -tril(A,-1);
  T = inv(D+L)*U;
  c = 0;
  t = toc();
endfunction
