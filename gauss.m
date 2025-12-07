function [x, p]=gauss(A, b)
% Gaussian elimination with partial pivoting
[N, N]=size(A);
% initialization of permutation vector
p=1:N;

% partial pivoting and forward elimination
for k=1:N-1
  % find pivot element in k-th column
  pivot=abs(A(p(k),k));
  radek=k;
  for i=k+1:N
      if pivot<abs(A(p(i), k))
          pivot=A(p(i), k);
          radek=i;
      end;
  end;
  % if pivot = 0 then matrix A is singular
  if pivot < eps
      'A is singular. No unique solution.'
      break;
  end;
  % swap p(k)-th row and p(radek)-th row if necessary
  if radek>k
       pomoc=p(k);
       p(k)=p(radek);
       p(radek)=pomoc;
  end;
  % elimination of i-th row
  for i=k+1:N
      % multiplier
      m=A(p(i),k)/A(p(k), k);
      A(p(i), k)=0;
      A(p(i), k+1:N)=A(p(i), k+1:N)-m*A(p(k), k+1:N);
      b(p(i))=b(p(i))-m*b(p(k));
   end;
end;

% back substitution
for k=N:-1:1
    x(k)=b(p(k));
    for j=k+1:N
        x(k)=x(k)-A(p(k), j)*x(j);
    end;
    x(k)=x(k)/A(p(k), k);
end;

% transposition
x=x';   