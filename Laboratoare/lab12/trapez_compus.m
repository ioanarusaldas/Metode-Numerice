function i = trapez_compus(a, b, f, n)
  i = 0;
  h = (b-a)/n;
  
  for i = 1:n
    i = i + trapez_simplu(a + h*(i-1), a + h*i, f);
  endfor
  
  i = i* (h/2);
endfunction