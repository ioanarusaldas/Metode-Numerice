function [A_k S] = task3(image, k)
  A=double(imread(image));
  %se citeste matricea imaginii
  [m,n]=size(A);
  suma=0;
  for i=1:m
    %se calculeaza media elementelor fiecarei linii
    suma=sum(A(i,:));
    medie=suma/n;
    v(i)=medie;
    %se actualizeaza vectorii
    A(i,:)=A(i,:)-v(i);
  endfor
  %se construieste matricea Z
  Z=A'/sqrt(n-1);
  %se calculeaza DVS
  [U S V] =svd(Z); 
  %se formeaza sptiul k-dimensional 
  W=V(:,1:k);
  %Se calculeaza proiectia lui A in spatiul componentelor principale
  Y=W'*A;
  v=v';
  %Se aproximeaza matricea initiala
  A_k = W*Y + v;
endfunction