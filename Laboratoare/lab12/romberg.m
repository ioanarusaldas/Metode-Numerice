function I = romberg(a, b, f, n)
  I = zeros(n,n);
  
  for i = 1:n
    I(i,1) = trapez_compus(a, b, f, 2^(i-1));
  endfor
  
  for j = 2:n
    for k = j:n
      I(k,j) = (4^(j-1)*I(k,j-1) - I(k-1,j-1))/(4^(j-1)-1);
    endfor
  endfor
endfunction