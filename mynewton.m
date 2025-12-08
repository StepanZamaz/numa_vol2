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


%% Priklad
%clear all; close all; clc;

%f=@(x) sqrt(x)-sin(x)-1;
%graf
%x=[-5:0.1:5];
%y=f(x);
%plot(x, y, 'r-', x, 0.*x, 'b-')
%% Bolzanova veta
%disp(f(2))
%disp(f(3))
%% Furierovy podminky
%x=[2:0.1:3];
% 1.derivace
%syms x
%f_der=sqrt(x)-sin(x)-1;
%df=diff(f_der);
%disp(df);
%df=@(x) 1./(2*x.^(1/2)) - cos(x);
%overeni ze je kladne na intervalu
%disp(df(2));
%disp(df(3));
% 2.derivace
%ddf=diff(f_der,2);
%disp(ddf);
%ddf=@(x) sin(x) - 1./(4*x.^(3/2))
%overeni ze je kladne na intervalu
%disp(ddf(2));
%disp(ddf(3));
%% v x0 je f(x0)*f''(x0)>0
%x0=3;
%disp(f(x0)*ddf(x0));

%% volani fce
%format long
%[koren, pocet]=mynewton(f, df, x0, 5, 100)
%format short