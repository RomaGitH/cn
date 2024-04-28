function x=rcubica(a)

  function y = f(w)

    y = w^3 - a;
  endfunction

##  f(a^3)
  [x,h] = biseccion(@f,-a,a,100,1e-12);
  if !h
    disp('Failed');
  endif
  endfunction
