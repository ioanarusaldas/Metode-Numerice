function [A_k S] = task4(image, k)
  A=double(imread(image));
  %se citeste matricea imaginii
  [m,n]=size(A);
  suma=0;
  for i=1:m
    %se calculeaza media elementelor fiecarei linii
    suma=sum(A(i,:));
    medie=suma/n;
    v(i)=medie;
    A(i,:)=A(i,:)-v(i);
  endfor
  %Se construieste matricea de covarianta
  O=A';
  Z=A*(O/(n-1));
  [V S] = eig(Z);
  W=V(:,k:-1:1);
  Y=W'*A;
  v=v';
  %Se aproximeaza matricea initiala
  A_k = W*Y + v;
endfunction