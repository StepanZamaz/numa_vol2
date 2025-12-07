%% Priklad 1: metoda puleni intervalu (bisekce)
clear all; close all; clc;
f=@(x) (x.^(2))+4*sin(x);
% graf
x=[-5:0.1:5];
y=f(x);
plot(x, y, 'r-', x, 0.*x, 'b-')
%% Bolzanova veta na [2,3]
f(2)
f(3)
bolzano = f(2)*f(3);
disp((bolzano<0));
%% Reseni
[koren, pocet]=mybisect(f, 2, 3, 4, 100)

%% Priklad 2: Newtonova metoda
clear all; close all; clc;
% fce 
f=@(x) (x.^(1/2))-sin(x)-1;
x=[-5:0.1:5];
y=f(x);
plot(x, y, 'b-', x, 0.*x, 'r-')
%% Bolzano na [2,3]
bolzano = f(2)*f(3);
disp(bolzano<0);
%% Fourierovy podminky - tabelace
x=[2:0.1:3];
%% 1. derivace
%pokud bude syms nainstalovany
%syms x
%f = sqrt(x) - sin(x) - 1;
%df = diff(f,2)
df=@(x) 1./(2*sqrt(x))-cos(x);
disp([min(df(x)),max(df(x))]);
%% 2. derivace
ddf=@(x) -1./(4*x.^(3/2))+sin(x);
disp([min(ddf(x)),max(ddf(x))]);
%% v x0 je f(x0)*f''(x0)>0
x0=3;
disp(f(x0)*ddf(x0));
%% volani fce
format long
[koren, pocet]=mynewton(f, df, x0, 5, 100)
format short