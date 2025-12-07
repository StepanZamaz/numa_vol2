%% Priklad
clear all; close all; clc;

f=@(x) sqrt(x)-sin(x)-1;
%graf
x=[-5:0.1:5];
y=f(x);
plot(x, y, 'r-', x, 0.*x, 'b-')
%% Bolzanova veta
disp(f(2))
disp(f(3))
%% Furierovy podminky
x=[2:0.1:3];
% 1.derivace
syms x
f_der=sqrt(x)-sin(x)-1;
df=diff(f_der);
disp(df);
df=@(x) 1./(2*x.^(1/2)) - cos(x);
%overeni ze je kladne na intervalu
disp(df(2));
disp(df(3));
% 2.derivace
ddf=diff(f_der,2);
disp(ddf);
ddf=@(x) sin(x) - 1./(4*x.^(3/2))
%overeni ze je kladne na intervalu
disp(ddf(2));
disp(ddf(3));
%% v x0 je f(x0)*f''(x0)>0
x0=3;
disp(f(x0)*ddf(x0));

%% volani fce
format long
[koren, pocet]=mynewton(f, df, x0, 5, 100)
format short