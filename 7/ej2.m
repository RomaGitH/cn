f = @(y,t) - y + sin(t) + cos(t);
y0 = 0;
[x,w] = ode45(f,[0,2], y0);
real_value = x(2); 
#figure(1);
#plot(x,w);
L = 10;
errors = [];
for (i=1:10)
	i
	L = L*i;
	[x,w] = euler(f,[0,2],y0,L);
	error = abs(x(2) - real_value);
	errors = [errors error];
endfor
figure(2);
plot(errors);

