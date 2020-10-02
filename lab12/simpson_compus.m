function i = simpson_compus(a, b, f, n)
  i = 0;
  h = (b-a)/2;
  for j = 1:(n-1):2
    i = i + simpson_simplu(a + h*(j-1), a + h*(j+1), f);
  endfor
endfunction