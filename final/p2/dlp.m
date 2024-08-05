
F = @(x) [-2./x, 2./(x.^2), sin(log(x))./(x.^2)];

inter = [1 2];
yc = [1 2];

c2 = (1/70)*(8-12*sin(log(2))-4*cos(log(2)));
c1 = (11/10) - c2;
y = @(x) (c1.*x) + (c2./x) - (3/10).*(sin(log(x)) - (1/10).*(cos(log(x))));
L = 10;

[xi, yi] = disparo_lineal(F,inter,yc,L)

