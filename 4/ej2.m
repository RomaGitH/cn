##g1 = 1/2 *(10 - x^3)^1/2
##g1 = (10/(4+x))^1/2
##tic()
##[x,h] = biseccion(@f,-1,10,150,1e-3)
##toc()
##
##x =0:0.01:1;
##
##plot(x,g(x));

tic()
[x,h] = puntofijo(@g,2.5,150,1e-3)
toc()
f(x)
