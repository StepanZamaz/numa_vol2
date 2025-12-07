function [a, r] = kvadratickaMnc(x,y)

A=[x.^2, x, ones(length(x), 1)];
disp([A, y]);

B=A'*A; c=A'*y;
disp([B, c]);

a = gauss(B, c);
disp(a);

r=A*a-y;
r=norm(r);
disp(r);
end
% K=['Rovnice paraboly: y=' num2str(round(a(1), 2)) '*x^2+' num2str(round(a(2),2)) '*x' num2str(round(a(3),2))];
% K=['Residuum vypoctu: r=' num2str(r)];
% K=['Cislo podminenosti matice normalni souistavy je: ' num2str(cond(B))];
% vypis odhadnute y - z=a(3)+a(2)*x+a(1)*x.^2;