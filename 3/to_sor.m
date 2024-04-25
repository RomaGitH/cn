function [T, c, t] = to_sor(A,b,w)
  tic();
  Uw = -triu(A,1)+w;
  D = diag(diag(A));
  Lw = tril(A,-1)*w;
  T = inv(D+Lw)*((1-w)*D-Uw);
  c = 0;
  t = toc();
endfunction
