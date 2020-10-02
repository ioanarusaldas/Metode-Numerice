function p
  suml=0,ok=1,sumc=0,sumd=0,suml=0
for j= 1: 3,
  suml1=suml1+x(1,j)
endfor
for i= 1:3
  suml=0
  for j=1:3
    suml=suml+x(i,j)
    
  endfor
  if suml1 != suml
    ok=0
  endif
endfor
for j= 1:3
  sumc=0;
  for i=1:3
    sumc=sumc+x(j,i)
  endfor
  if suml1 != sumc
    ok=0
  endif
endfor

for i= 1:3
  for j=1:3
    if(i==j)
    sumd=sumd+x(i,j)
  endif
endfor
endfor
if suml1 != sumd
  ok=0
endif

if(ok==1)
disp('patrat magic')
endif
endfunction

