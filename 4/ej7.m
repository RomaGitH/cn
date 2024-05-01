xmin = 0
xmax = 1;

while f(xmax)f(xmin) > 0
  xmax = xmax*2
  if(xmax > 2^20)
    break
  endif
endwhile

[x,h] = biseccion(@f, 0,xmax,100,1e-2);
[x,h] = newton(@f,@df,x,100,1e-12);
f(x)
