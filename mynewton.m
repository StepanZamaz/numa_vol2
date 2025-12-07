function [x, it] = mynewton(fun, dfun, x0, presnost, maxiter)
% =================================================
% function [x, it] = newton(fun, dfun, x0, presnost)
% =================================================
% funkce nalezne koren rovnice f(x) = 0
% Newtonovou metodou
% ================================================
% vystup:
% x  ... koren
% it ... pocet iteraci
% =================================================
% vstup:
% fun ... f(x) inline fce
% dfun .. derivace f(x) zadana jaklo inline fce
% x0  ... pocatecni aproximace
% presnost ... pocet platnych des. mist
% maxiter ... maximalni pocet iteraci
% ==================================================

tol=1/2*10^(-presnost);
x1=x0-feval(fun, x0)/feval(dfun, x0);
it = 1;
delta=abs(x1-x0);

while (delta > tol && it<maxiter) 
  it = it + 1;
  x0 = x1;
  x1=x0-feval(fun, x0)/feval(dfun, x0);
  delta=abs(x1-x0);
end
x = x1;
% end