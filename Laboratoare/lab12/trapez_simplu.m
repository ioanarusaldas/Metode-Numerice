function i = trapez_simplu(a, b, f)
  h = b - a;
  i = (h/2) * (f(a) + f(b));
endfunction
