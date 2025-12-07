function [x, iterace] = mybisect(fce, a, b, presnost, maxiter)
% moje metoda puleni intervalu
% f=@(x) atan(10*x)-1.2;
% [koren, pocet]=mybisect(f, 0, 1, 4, 100)

if a>b
    error('Spatne zadane meze intervalu');
end

fa=feval(fce, a);
fb=feval(fce, b);

if fa*fb>0
    error('Spatne uzavorkovani');
end

eps=0.5*10^(-presnost);
vzdalenost=b-a;
iterace=0;

while (vzdalenost>eps && iterace<maxiter)
    x=(a+b)*0.5;
    fx=feval(fce, x);
    if fa*fx<0
        b=x;
        fb=fx;
    elseif fx*fb<0
        a=x;
        fa=fx;
    else 
        a=x;
        b=x;
    end
    iterace=iterace+1;
    vzdalenost=b-a;
end
end

