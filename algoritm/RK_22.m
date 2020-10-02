function y = RK_22(a, b, n, f, y0)
  h = (b-a)/n;
  x(1:n+1) = a + h*[0:n];
  y(1) = y0;
  for i = 1 : n
    k1 = h*f(x(i), y(i));
    k2 = 3*h*f(x(i) + 2*h/3, y(i) + 2*k1/3);
    y(i+1) = y(i) + (k1+k2)/4;
  endfor
 y_e=@(x) sin(x).+e.^(-20.*x);
 plot(x,y_e(x),'r',x,y,'b');
endfunction 