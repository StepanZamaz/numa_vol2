%% Priklad 1: MNC - normalova rovnice 
% linearni zavislost
clear; close all; clc;

x=[5 15 40 50 60 80]';
y=[10 15 25 44 79 112]';

plot(x,y, 'ro');

[a, r] = linearniMnc(x,y)

K=['Rovnice primky: y=' num2str(round(a(1), 2)) '*x+' num2str(round(a(2),2))];
disp(K);

K=['Residuum vypoctu: r=' num2str(r)];
disp(K);

%% Priklad 2: MNC - normalove rovnice 
% kvadraticka zavislost
clear all; close all;

x=[5 15 40 50 60 80]';
y=[10 15 25 44 79 112]';

plot(x, y, 'r*');

[a, r] = kvadratickaMnc(x,y)

K=['Rovnice paraboly: y=' num2str(round(a(1), 2)) '*x^2+' num2str(round(a(2),2)) '*x + ' num2str(round(a(3),2))];
disp(K);

K=['Residuum vypoctu: r=' num2str(r)];
disp(K);

%% aproximace funkcni hodnoty
x = 70;
z=a(3)+a(2)*x+a(1)*x.^2;
disp(z);

%%
syms x;
f = x^3 + sin(x);
df = diff(f);
