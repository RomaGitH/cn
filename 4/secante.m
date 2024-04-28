function [x,h] = secante(f,xmin,xmax,kmax,tol)

   q0 = f(xmin);
   q1 = f(xmax);

  for i=2:kmax
    x = xmax - q1*(xmax-xmin)/(q1-q0);  #df(x0) != 0...
    if abs(x - x0)<tol
      h = 1;
      break;
    endif

    xmin = xmax;
    q0 = q1;
    xmax = x;
    q1 = f(x);
  endfor
  h = 0;


  endfunction
