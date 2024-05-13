function [fun,res] = dif_div(x,fx,a)
    A = zeros(length(x),leng(x)+1);
    for i = 1:length(x)
      A(i,1) = x(i);
      A(i,2) = fx(i);
    endfor

    for i = 3:length(x)+1
      for j = 1:length(x)+2
        A(j,i) = (A(j+1,i-1)-A(j,i-1))/(A(j+i-2,1)-A(j,1));
      endfor
    endfor

    syms t; #variable simbolica
    #pkg load symbolic
    fun = A(1,2);
    for i=1:length(x)-1
      mul = 1;
      for j=1:i
        mul  = mul*(t-A(j,1));
      endfor
      fun = fun + mul*A(1,i+2);
    endfor


    res = subs(fun,a);

  endfunction
