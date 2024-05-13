function x = sust_adelante(A ,b);
  n=length(A(1,:));
  x = zeros(n,1); % inicializamos la solucion
  x(1) = b(1)/A(1,1); % primer calculo con la ultima ecuacion

  for i=1:n
      s = b(i);

      x(i) = (s - A(i,1:i-1)*x(1:i-1))/A(i,i);

  endfor
