function x = gauss(A, b);
  n = length(b);
  x = [A b];
  
  for k=1:n-1
    for i=k+1:n
      m = x(i,k)/x(k,k);
      x(i,k) = 0;
      for j =k+1:n+1
        x(i,j) = x(i,j)-m*x(k,j);
      endfor
    endfor
  endfor
