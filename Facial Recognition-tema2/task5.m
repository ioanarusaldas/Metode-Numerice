function task5()
  image='./in/images/image4.gif';
  %se alege calea catre imagine
  A=double(imread(image));
  [m,n]=size(A);
  k=min(m,n);
  [A_k S] = task3(image, k);
  %se calculeaza matricea A_k
  %se initializeaza vectorii
  a=[];
  b=[];
  v2=[];
  %imagine 1
  %vectorul v retine elementele de pe diagonala principala a lui S
  v=diag(S);
  %se realizeaza primul grafic
  figure(1);
  plot (v);
  %imagine 2
  k=[1:min(m,n)];
  %se alege k
  %m=min(m,n);
  for i=1:length(k)
    a=[];
    for j=1:i
      a=[a,S(j,j)];
    end
    %vectorul b retine suma elementelor de pe diagonala principala
       %pentru fiecare k
    b=[b,sum(a)];
  end
  for i=1:length(b)
    v2=[v2,b(i)/sum(diag(S))];
  end
  %se realizeaza graficul 2
  figure(2);
  plot(v2);
  %imagine 3
  v3=[];
  for l=1:length(k)
    [A_k S] = task3(image, l);
    %se calculeaza matricea A_k pentru fiecare k
    sum=0;
    for i=1:m
      for j=1:n
        x=(A(i,j)-A_k(i,j))^2;
        sum=sum+x; 
      endfor
    endfor
    v3=[v3,sum/(m*n)];
    %v3 retine eroarea aproximarii
  endfor
  %se realizeaza graficul 3
  figure(3);
  plot(v3);
  %imagine 4
  v4=[];
  for l=1:length(k)
    %se calculeaza rata de compresie a datelor
    Y=((2*l)+1)/n;
    v4=[v4,Y];
  endfor
  %se realizeaza grafiul 4
  figure(4);
  plot(v4);
endfunction
