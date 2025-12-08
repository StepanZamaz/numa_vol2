function [a, r] = linearniMnc(x,y)

disp([x, y]);

A=[x, ones(length(x), 1)];
disp([A, y]);

B=A'*A; c=A'*y;
disp([B, c]);

a = gauss(B, c);
disp(a);

r=A*a-y;
r=norm(r);

end
%x=[5 15 40 50 60 80]'; - zapis s carkou kvuli otoceni nebo co
% vypis grafu - plot(x, y, 'r+');
% vypis rovnice primky - K=['Rovnice primky: y=' num2str(round(a(1), 2)) '*x+' num2str(round(a(2),2))];
% vypis odhadnute y = z=a(2)+a(1)*x;
% K=['Residuum vypoctu: r=' num2str(r)];
% K=['Cislo podminenosti matice normalni soustavy je: ' num2str(cond(B))];


%clear; close all; clc;

%x=[5 15 40 50 60 80]';
%y=[10 15 25 44 79 112]';

%plot(x,y, 'ro');

%[a, r] = linearniMnc(x,y)

%K=['Rovnice primky: y=' num2str(round(a(1), 2)) '*x+' num2str(round(a(2),2))];
%disp(K);

%K=['Residuum vypoctu: r=' num2str(r)];
%disp(K);