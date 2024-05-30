x = [0 1 2 3 4];
y = x.^2;
f = @(t) t.^2;

[S,~,~] = funcion_spline(x, y, 0, 8);

P = polyfit(x,y,2);
T = @(w) polyval(P,w);


a1 = intNCcompuesta(f, 0, 4, 4, 3)
a2 = intNCcompuesta(T, 0, 4, 4, 3)
a3 = cuad_gauss_c(T, 0, 4, 4, 3)

s = simpsoncomp(x,y)
##q = trapz(x,y)


abs(s-a2)/abs(s)
