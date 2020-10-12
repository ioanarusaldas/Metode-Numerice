function i = simpson_simplu(a, b, f)
  h = (b-a)/2;
  i = (h/3) * (f(a) + 4*f((a+b)/2) + f(b));
endfunction