function [x succes iter] = GTR(a, d, c, b, x0, tol, maxiter)
A = diag(d) + diag(a, -1) + diag(c, 1);
[n n]=size(A);
succes=0;
iter=maxiter;
x=zeros(n,1);
while maxiter > 0
maxiter--;
x(1) = (b(1) - c(1) * x0(2))/d(1)
for i=2:n-1
x(i)=(b(i)-a(i) * x(i-1) - c(i) * x0(i+1))/d(i);
endfor
x(n) = (b(n) - a(n) * x(n-1))/d(n);
if norm(x-x0)<tol
succes=1;
break;
endif
x0=x;
endwhile
iter=iter-maxiter;
endfunction