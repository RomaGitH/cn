##]]
## Definicion de matriz
A = diag(2*ones(40,1),0) - diag(ones(39,1),1) - diag(ones(39,1),-1);

## Definicion de vector b
b =(([1:40]*1.5)-6)';


## Resolucion por gauss
x = gauss(A,b);
x(20)

## Declaracion de los argumentos de los metodos iterativos
x0 = zeros(1,40)';
itmax= 10000;
w = 1.85;
tol = 1e-5;

##norma usada como criteria de convergencia
## norma infinito del error relativo de dos it. sucesivas
## ie: norm((A*x - b)/(A*x),inf);

[~,itj,~] = jacobi(A,b,x0,itmax,tol)
[~,itg,~] = gaussseidel(A,b,x0,itmax,tol)
[~,its,~] = sor(A,b,x0,itmax,tol,w)

