function [x,h] = puntofijo(g,x0,kmax,tol)

  for i=1:kmax
    x = g(xo);
    if abs(x - x0)<tol
      h = 1;
      break;
    endif
    x0 = x;
  endfor
  h = 0;

  endfunction
